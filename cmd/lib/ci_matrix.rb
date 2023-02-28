# frozen_string_literal: true

require "cask/cask_loader"

require_relative "changed_files"

module CiMatrix
  MAX_JOBS = 256

  RUNNERS = {
    { symbol: :big_sur,  name: "macos-11" } => 0.0,
    { symbol: :monterey, name: "macos-12" } => 1.0,
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
    when /depends_on macos:/
      # In this case, `depends_on macos:` is present but wasn't matched by the
      # previous regexes. We want this to visibly fail so we can address the
      # shortcoming instead of quietly defaulting to `RUNNERS`.
      odie "Unhandled `depends_on macos` argument"
    end
    return RUNNERS if args.nil?

    # Preform same checks as `brew install` would
    required_macos = if args.count > 1
      { versions: args, comparator: "==" }
    elsif MacOSVersions::SYMBOLS.key?(args.first)
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
    avalible_runners.reject { |_, weight| weight.zero? }
                    .max_by { |(_, weight)| rand ** (1.0 / weight) }
                    .first
  end

  def self.runners(path)
    cask_content = path.read
    filtered_runners = filter_runners(cask_content)

    macos_version_found = cask_content.match?(/\bMacOS\s*\.version\b/m)
    filtered_macos_found = filtered_runners.keys.any? do |runner|
      (macos_version_found && cask_content.include?(runner[:symbol].inspect)) ||
        cask_content.include?("on_#{runner[:symbol]}")
    end
    if filtered_macos_found
      # If the cask varies on a MacOS version, test it on every possible macOS version.
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

    modified_cask_files.flat_map do |path|
      cask_token = path.basename(".rb")

      audit_args = ["--online"]
      audit_args << "--new-cask" if changed_files[:added_files].include?(path)

      audit_exceptions = []

      # TODO: Replace with `except`.
      audit_args << if labels.include?("ci-skip-appcast")
        "--no-appcast"
      else
        "--appcast"
      end

      if labels.include?("ci-skip-livecheck")
        audit_exceptions << ["hosting_with_livecheck", "livecheck_version", "livecheck_min_os"]
      end

      audit_exceptions << "livecheck_min_os" if labels.include?("ci-skip-livecheck-min-os")

      if labels.include?("ci-skip-repository")
        audit_exceptions << ["github_repository", "gitlab_repository",
                             "bitbucket_repository"]
      end

      audit_args << "--except" << audit_exceptions.join(",") if audit_exceptions.any?

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
