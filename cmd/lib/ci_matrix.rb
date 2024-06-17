# frozen_string_literal: true

require "cask/cask_loader"

require_relative "changed_files"

module CiMatrix
  MAX_JOBS = 256

  # Weight for each arch must add up to 1.0.
  INTEL_RUNNERS = {
    { symbol: :monterey, name: "macos-12", arch: :intel } => 0.0,
    { symbol: :ventura,  name: "macos-13", arch: :intel } => 1.0,
  }.freeze
  ARM_RUNNERS = {
    { symbol: :sonoma,   name: "macos-14", arch: :arm   } => 1.0,
  }.freeze
  RUNNERS = INTEL_RUNNERS.merge(ARM_RUNNERS).freeze

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
    filtered_runners = RUNNERS.dup if filtered_runners.empty?

    archs = architectures(cask_content:)
    filtered_runners.select! do |runner, _|
      archs.include?(runner.fetch(:arch))
    end

    RUNNERS
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

  def self.random_runner(available_runners = ARM_RUNNERS)
    available_runners.max_by { |(_, weight)| rand ** (1.0 / weight) }
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
      [filtered_runners.keys, true]
    else
      # Otherwise, select a runner from each architecture based on weighted random sample.
      grouped_runners = filtered_runners.group_by { |runner, _| runner.fetch(:arch) }
      selected_runners = grouped_runners.map do |_, runners|
        random_runner(runners)
      end
      [selected_runners, false]
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
        Cask::CaskLoader.find_cask_in_tap(cask_name, tap).relative_path_from(tap.path)
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

      audit_exceptions << %w[homepage_https_availability] if labels.include?("ci-skip-homepage")

      if labels.include?("ci-skip-livecheck")
        audit_exceptions << %w[hosting_with_livecheck livecheck_https_availability
                               livecheck_min_os livecheck_version]
      end

      audit_exceptions << "livecheck_min_os" if labels.include?("ci-skip-livecheck-min-os")

      if labels.include?("ci-skip-repository")
        audit_exceptions << %w[github_repository github_prerelease_version
                               gitlab_repository gitlab_prerelease_version
                               bitbucket_repository]
      end

      audit_exceptions << %w[token_conflicts token_valid token_bad_words] if labels.include?("ci-skip-token")

      audit_args << "--except" << audit_exceptions.join(",") if audit_exceptions.any?

      cask_content = path.read

      runners, multi_os = runners(cask_content:)
      runners.product(architectures(cask_content:)).filter_map do |runner, arch|
        native_runner_arch = arch == runner.fetch(:arch)
        # If it's just a single OS test then we can just use the two real arch runners.
        next if !native_runner_arch && !multi_os

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
          runner:       runner.fetch(:name),
        }
      end
    end
  end
end
