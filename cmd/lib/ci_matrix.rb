# frozen_string_literal: true

require "cask/cask_loader"

require_relative "changed_files"

module CiMatrix
  MAX_JOBS = 256

  RUNNERS = {
    { symbol: :big_sur,  name: "macos-11", arch: :intel } => 0.0,
    { symbol: :monterey, name: "macos-12", arch: :intel } => 0.0,
    { symbol: :ventura,  name: "macos-13", arch: :intel } => 1.0,
  }.freeze

  # This string uses regex syntax and is intended to be interpolated into
  # `Regexp` literals, so the backslashes must be escaped to be preserved.
  DEPENDS_ON_MACOS_ARRAY_MEMBER = '\\s*"?:([^\\s",]+)"?,?\\s*'

  def self.filter_runners(cask_content)
    # Retrieve arguments from `depends_on macos:`
    required_macos = case cask_content
    when /depends_on\s+macos:\s+\[((?:#{DEPENDS_ON_MACOS_ARRAY_MEMBER})+)\]/o
      Regexp.last_match(1).scan(/#{DEPENDS_ON_MACOS_ARRAY_MEMBER}/o).flatten.map(&:to_sym).map do |v|
        {
          version:    v,
          comparator: "==",
        }
      end
    when /depends_on\s+macos:\s+"?:([^\s"]+)"?/ # e.g. `depends_on macos: :big_sur`
      [
        {
          version:    Regexp.last_match(1).to_sym,
          comparator: "==",
        },
      ]
    when /depends_on\s+macos:\s+"([=<>]=)\s+:([^\s"]+)"/ # e.g. `depends_on macos: ">= :monterey"`
      [
        {
          version:    Regexp.last_match(2).to_sym,
          comparator: Regexp.last_match(1),
        },
      ]
    when /depends_on\s+macos:/
      # In this case, `depends_on macos:` is present but wasn't matched by the
      # previous regexes. We want this to visibly fail so we can address the
      # shortcoming instead of quietly defaulting to `RUNNERS`.
      odie "Unhandled `depends_on macos` argument"
    else
      []
    end

    filtered_runners = RUNNERS.select do |runner, _|
      required_macos.any? do |r|
        MacOSVersion.from_symbol(runner.fetch(:symbol)).compare(
          r.fetch(:comparator),
          MacOSVersion.from_symbol(r.fetch(:version)),
        )
      end
    end
    return filtered_runners unless filtered_runners.empty?

    RUNNERS
  end

  def self.random_runner(avalible_runners = RUNNERS)
    avalible_runners.max_by { |(_, weight)| rand ** (1.0 / weight) }
                    .first
  end

  def self.runners(cask_content:)
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

  def self.architectures(cask_content:)
    case cask_content
    when /depends_on\s+arch:\s+:arm64/
      [:arm]
    when /depends_on\s+arch:\s+:x86_64/
      [:intel]
    when /\barch\b/, /\bon_(arm|intel)\b/
      [:arm, :intel]
    else
      RUNNERS.keys.map { |r| r.fetch(:arch) }.uniq.sort
    end
  end

  def self.generate(tap, labels: [], cask_names: [], skip_install: false, new_cask: false)
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

    cask_files_to_check = if cask_names.any?
      cask_names.map do |cask_name|
        Cask::CaskLoader.load(cask_name).sourcefile_path
      end
    else
      changed_files[:modified_cask_files]
    end

    jobs = cask_files_to_check.count
    odie "Maximum job matrix size exceeded: #{jobs}/#{MAX_JOBS}" if jobs > MAX_JOBS

    cask_files_to_check.flat_map do |path|
      cask_token = path.basename(".rb")

      audit_args = ["--online"]
      audit_args << "--new" if changed_files[:added_files].include?(path) || new_cask

      audit_args << "--signing"

      audit_exceptions = []

      if labels.include?("ci-skip-livecheck")
        audit_exceptions << %w[hosting_with_livecheck https_availability
                               livecheck_min_os livecheck_version]
      end

      audit_exceptions << "livecheck_min_os" if labels.include?("ci-skip-livecheck-min-os")

      if labels.include?("ci-skip-repository")
        audit_exceptions << %w[github_repository github_prerelease_version
                               gitlab_repository gitlab_prerelease_version
                               bitbucket_repository]
      end

      audit_args << "--except" << audit_exceptions.join(",") if audit_exceptions.any?

      cask_content = path.read

      runners(cask_content: cask_content).product(architectures(cask_content: cask_content)).map do |runner, arch|
        native_runner_arch = arch == runner.fetch(:arch)
        arch_args = native_runner_arch ? [] : ["--arch=#{arch}"]
        {
          name:         "test #{cask_token} (#{runner.fetch(:name)}, #{arch})",
          tap:          tap.name,
          cask:         {
            token: cask_token,
            path:  "./#{path}",
          },
          audit_args:   audit_args + arch_args,
          fetch_args:   arch_args,
          skip_install: labels.include?("ci-skip-install") || !native_runner_arch || skip_install,
          skip_readall: !native_runner_arch,
          runner:       runner.fetch(:name),
        }
      end
    end
  end
end
