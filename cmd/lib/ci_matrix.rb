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
    required_macos = case cask_content
    when /depends_on macos:\s+\[((?:#{DEPENDS_ON_MACOS_ARRAY_MEMBER})+)\]/o
      Regexp.last_match(1).scan(/#{DEPENDS_ON_MACOS_ARRAY_MEMBER}/o).flatten.map(&:to_sym).map do |v|
        {
          version:    v,
          comparator: "==",
        }
      end
    when /depends_on macos:\s+"?:([^\s"]+)"?/ # e.g. `depends_on macos: :big_sur`
      [
        {
          version:    Regexp.last_match(1).to_sym,
          comparator: "==",
        },
      ]
    when /depends_on macos:\s+"([=<>]=)\s+:([^\s"]+)"/ # e.g. `depends_on macos: ">= :monterey"`
      [
        {
          version:    Regexp.last_match(2).to_sym,
          comparator: Regexp.last_match(1),
        },
      ]
    when /depends_on macos:/
      # In this case, `depends_on macos:` is present but wasn't matched by the
      # previous regexes. We want this to visibly fail so we can address the
      # shortcoming instead of quietly defaulting to `RUNNERS`.
      odie "Unhandled `depends_on macos` argument"
    else
      []
    end

    filtered_runners = RUNNERS.select do |runner, _|
      required_macos.any? do |r|
        MacOS::Version.from_symbol(runner.fetch(:symbol)).public_send(r.fetch(:comparator), r.fetch(:version))
      end
    end
    return filtered_runners unless filtered_runners.empty?

    RUNNERS
  end

  def self.random_runner(avalible_runners = RUNNERS)
    avalible_runners.max_by { |(_, weight)| rand ** (1.0 / weight) }
                    .first
  end

  def self.runners(path)
    cask_content = path.read
    filtered_runners = filter_runners(cask_content)

    macos_version_found = cask_content.match?(/\bMacOS\s*\.version\b/m)
    filtered_macos_found = filtered_runners.keys.any? do |runner|
      (
        macos_version_found &&
        cask_content.include?(runner[:symbol].inspect)
      ) || cask_content.include?("on_#{runner[:symbol]}")
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

      audit_args << "--signing"

      audit_exceptions = []

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
          skip_readall: false,
          runner:       runner[:name],
        }
      end
    end
  end
end
