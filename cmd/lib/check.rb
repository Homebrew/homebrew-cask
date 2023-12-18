# typed: false
# frozen_string_literal: true

require "forwardable"

APPLE_LAUNCHJOBS_REGEX =
  /\A(?:application\.)?com\.apple\.(installer|Preview|Safari|systemevents|systempreferences|Terminal)(?:\.|$)/.freeze

module Check
  CHECKS = {
    installed_apps:       lambda {
      ["/Applications", File.expand_path("~/Applications")]
        .flat_map { |dir| (0..5).map { |i| "/*" * i }.flat_map { |glob| Dir["#{dir}#{glob}.app"] } }
    },
    installed_kexts:      lambda {
      system_command!("/usr/sbin/kextstat", args: ["-kl"], print_stderr: false)
        .stdout
        .lines
        .map { |l| l.match(/^.{52}([^\s]+)/)[1] }
        .grep_v(/^com\.apple\./)
    },
    installed_pkgs:       lambda {
      Pathname("/var/db/receipts")
        .children
        .grep(/\.plist$/)
        .map { |path| path.basename.to_s.sub(/\.plist$/, "") }
    },
    installed_launchjobs: lambda {
      format_launchjob = lambda { |file|
        name = file.basename(".plist").to_s

        result = system_command "plutil", args: ["-convert", "xml1", "-o", "-", "--", file], sudo: true
        return name unless result.success?

        label = result.plist["Label"]
        (name == label) ? name : "#{name} (#{label})"
      }

      [
        "~/Library/LaunchAgents",
        "~/Library/LaunchDaemons",
        "/Library/LaunchAgents",
        "/Library/LaunchDaemons",
      ].map { |p| Pathname(p).expand_path }
        .select(&:directory?)
        .flat_map(&:children)
        .select { |child| child.extname == ".plist" }
        .select(&:exist?)
        .map(&format_launchjob)
    },
    loaded_launchjobs:    lambda {
      launchctl = lambda do |sudo|
        system_command!("/bin/launchctl", args: ["list"], print_stderr: false, sudo: sudo)
          .stdout
          .lines.drop(1)
          .grep_v(APPLE_LAUNCHJOBS_REGEX)
      end

      [false, true]
        .flat_map(&launchctl)
        .map { |l| l.split(/\s+/)[2] }
        .grep_v(/^com\.apple\./)
    },
  }.freeze
  private_constant :CHECKS

  class Diff
    attr_reader :removed, :added

    def initialize(before, after)
      @before = before.sort.uniq
      @after = after.sort.uniq
      @removed = @before - @after
      @added = @after - @before
    end

    def changed?
      removed.any? || added.any?
    end
  end
  private_constant :Diff

  def self.all
    CHECKS.transform_values(&:call)
  end

  def self.errors(before, after, cask:)
    uninstall_directives = cask.artifacts.find { |a| a.instance_of?(Cask::Artifact::Uninstall) }&.directives || {}

    diff = {}

    CHECKS.each_key do |name|
      diff[name] = Diff.new(before[name], after[name])
    end

    errors = []

    pkg_files = diff[:installed_pkgs]
                .added
                .flat_map { |id| Cask::Pkg.new(id).pkgutil_bom_all.map(&:to_s) }
    installed_apps = diff[:installed_apps].added - pkg_files
    if installed_apps.any?
      message = "Some applications are still installed, add them to #{Formatter.identifier("uninstall delete:")}\n"
      message += installed_apps.join("\n")
      errors << message
    end

    installed_kexts = diff[:installed_kexts]
                      .added
                      .grep_v(/^com\.(softraid\.driver\.SoftRAID|highpoint-tech\.kext\.*)/)
    if installed_kexts.any?
      message = "Some kernel extensions are still installed, add them to #{Formatter.identifier("uninstall kext:")}\n"
      message += installed_kexts.join("\n")
      errors << message
    end

    installed_packages = diff[:installed_pkgs].added
    if installed_packages.any?
      message = "Some packages are still installed, add them to #{Formatter.identifier("uninstall pkgutil:")}\n"
      message += installed_packages.join("\n")
      errors << message
    end

    installed_launchjobs = diff[:installed_launchjobs].added
    if installed_launchjobs.any?
      message = "Some launch jobs are still installed, add them to #{Formatter.identifier("uninstall launchctl:")}\n"
      message += installed_launchjobs.join("\n")
      errors << message
    end

    running_apps = diff[:loaded_launchjobs]
                   .added
                   .grep(/\.\d+\Z/)
                   .grep_v(APPLE_LAUNCHJOBS_REGEX)
                   .map { |id| id.sub(/\A(?:application\.)?(.*?)(?:\.\d+){0,2}\Z/, '\1') }

    loaded_launchjobs = diff[:loaded_launchjobs]
                        .added
                        .grep_v(/\.\d+\Z/)

    missing_running_apps = running_apps - Array(uninstall_directives[:quit])
    if missing_running_apps.any?
      message = "Some applications are still running, add them to #{Formatter.identifier("uninstall quit:")}\n"
      message += missing_running_apps.join("\n")
      errors << message
    end

    missing_loaded_launchjobs = loaded_launchjobs - Array(uninstall_directives[:launchctl])
    if missing_loaded_launchjobs.any?
      message = "Some launch jobs were not unloaded, add them to #{Formatter.identifier("uninstall launchctl:")}\n"
      message += missing_loaded_launchjobs.join("\n")
      errors << message
    end

    errors
  end
end
