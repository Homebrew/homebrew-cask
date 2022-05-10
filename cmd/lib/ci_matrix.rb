# frozen_string_literal: true

require "cask/cask_loader"

require_relative "changed_files"

module CiMatrix
  MAX_JOBS = 256

  RUNNERS = {
    { symbol: :catalina, name: "macos-10.15" } => 0.9,
    { symbol: :big_sur,  name: "macos-11" }    => 0.1,
    { symbol: :monterey,  name: "macos-12" }   => 0.1,
  }.freeze

  # This string uses regex syntax and is intended to be interpolated into
  # `Regexp` literals, so the backslashes must be escaped to be preserved.
  DEPENDS_ON_MACOS_ARRAY_MEMBER = '\\s*"?:([^\\s",]+)"?,?\\s*'

  def self.filter_runners(cask_content)
    # Retrieve arguments from `depends_on macos:`
    args = case cask_content
    when /depends_on macos: \[((?:#{DEPENDS_ON_MACOS_ARRAY_MEMBER})+)\]/o
      Regexp.last_match(1).scan(/#{DEPENDS_ON_MACOS_ARRAY_MEMBER}/o).flatten.map(&:to_sym)
    when /depends_on macos: "?:([^\s"]+)"?/
      [*Regexp.last_match(1).to_sym]
    when /depends_on macos: "([=<>]=\s:?\S+)"/
      [*Regexp.last_match(1)]
    end
    return RUNNERS if args.nil?

    # Preform same checks as `brew install` would
    required_macos = if args.count > 1
      { versions: args, comparator: "==" }
    elsif MacOS::Version::SYMBOLS.key?(args.first)
      { versions: [args.first], comparator: "==" }
    elsif /^\s*(?<comparator><|>|[=<>]=)\s*:?(?<version>\S+)\s*$/ =~ args.first
      { versions: [version.to_sym], comparator: comparator }
    else # rubocop:disable Lint/DuplicateBranch
      { versions: [args.first], comparator: "==" }
    end

    # Filter
    filtered_runners = RUNNERS.select do |runner, _|
      required_macos[:versions].any? do |v|
        MacOS::Version.from_symbol(runner[:symbol]).public_send(required_macos[:comparator], v)
      end
    end
    return filtered_runners unless filtered_runners.empty?

    RUNNERS
  end

  def self.random_runner(avalible_runners = RUNNERS)
    avalible_runners.max_by { |(_, weight)| rand ** (1.0 / weight) }.first
  end

  def self.runners(path)
    cask_content = path.read
    filtered_runners = filter_runners(cask_content)

    if cask_content.match?(/\bMacOS\s*\.version\b/m) &&
       filtered_runners.keys.any? { |runner| cask_content.include?(runner[:symbol].inspect) }
      # If the cask depends on `MacOS.version`, test it on every possible macOS version.
      filtered_runners.keys
    else
      # Otherwise, select a runner based on weighted random sample.
      [random_runner(filtered_runners)]
    end
  end

  def self.generate(tap, labels: [])
    odie "This command must be run from inside a tap directory." unless tap

    tap.extend(ChangedFiles)

    changed_files = tap.changed_files

    ruby_files_in_wrong_directory =
      changed_files[:modified_ruby_files] - (
      changed_files[:modified_cask_files] +
      changed_files[:modified_command_files] +
      changed_files[:modified_github_actions_files]
    )

    if ruby_files_in_wrong_directory.any?
      ruby_files_in_wrong_directory.each do |path|
        puts "::error file=#{path}::File is in wrong directory."
      end

      odie "Found Ruby files in wrong directory:\n#{ruby_files_in_wrong_directory.join("\n")}"
    end

    modified_cask_files = changed_files[:modified_cask_files]

    jobs = modified_cask_files.count
    odie "Maximum job matrix size exceeded: #{jobs}/#{MAX_JOBS}" if jobs > MAX_JOBS

    changed_files[:modified_cask_files].flat_map do |path|
      cask_token = path.basename(".rb")

      appcast_arg = if labels.include?("ci-skip-appcast")
        "--no-appcast"
      else
        "--appcast"
      end

      audit_args = [appcast_arg, "--online"]

      audit_args << "--new-cask" if changed_files[:added_files].include?(path)

      runners(path).map do |runner|
        {
          name:         "test #{cask_token} (#{runner[:name]})",
          tap:          tap.name,
          cask:         {
            token: cask_token,
            path:  "./#{path}",
          },
          audit_args:   audit_args,
          skip_install: labels.include?("ci-skip-install"),
          runner:       runner[:name],
        }
      end
    end
  end
end
