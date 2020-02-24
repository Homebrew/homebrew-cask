require "forwardable"

class Check
  CHECKS = {
    installed_apps: -> {
      ["/Applications", File.expand_path("~/Applications")]
        .flat_map { |dir| (0..5).map { |i| "/*" * i }.flat_map { |glob| Dir["#{dir}#{glob}.app"] } }
    },
    installed_kexts: -> {
      system_command!("/usr/sbin/kextstat", args: ["-kl"], print_stderr: false)
        .stdout
        .lines
        .map { |l| l.match(/^.{52}([^\s]+)/)[1] }
        .grep_v(/^com\.apple\./)
    },
    installed_pkgs: -> {
      Pathname("/var/db/receipts")
        .children
        .grep(/\.plist$/)
        .map { |path| path.basename.to_s.sub(/\.plist$/, "") }
    },
    installed_launchjobs: -> {
      format_launchjob = lambda { |file|
        name = file.basename(".plist").to_s

        xml, = system_command! "plutil", args: ["-convert", "xml1", "-o", "-", "--", file], sudo: true

        label = Plist.parse_xml(xml)["Label"]
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
    loaded_launchjobs: -> {
      launchctl = lambda do |sudo|
        system_command!("/bin/launchctl", args: ["list"], print_stderr: false, sudo: sudo)
          .stdout
          .lines.drop(1)
      end

      [false, true]
        .flat_map(&launchctl)
        .map { |l| l.split(/\s+/)[2] }
        .grep_v(/^com\.apple\./)
    },
  }

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

  def before
    @diff = nil

    @before = {}

    CHECKS.each do |name, block|
      @before[name] = block.call
    end
  end

  def after
    @diff = nil

    @after = {}

    CHECKS.each do |name, block|
      @after[name] = block.call
    end
  end

  def diff
    return @diff if @diff

    @diff = {}

    CHECKS.keys.each do |name|
      @diff[name] = Diff.new(@before[name], @after[name])
    end

    @diff
  end
  private :diff

  def success?(ignore_exceptions: true)
    diff.values
      .map { |v| v.added.reject { |s| ignore_exceptions ? zap_exceptions.include?(s) : false  } }
      .all?(&:none?)
  end

  def zap_exceptions
    [
      "com.microsoft.autoupdate.helper",
      "com.microsoft.package.Microsoft_AU_Bootstrapper.app",
      "com.microsoft.package.Microsoft_AutoUpdate.app",
      "com.microsoft.update.agent",
    ].freeze
  end

  def message(stanza: "uninstall")
    lines = []

    pkg_files = diff[:installed_pkgs]
                 .added
                 .flat_map { |id| Cask::Pkg.new(id).pkgutil_bom_all.map(&:to_s) }

    installed_apps = diff[:installed_apps].added - pkg_files

    if installed_apps.any?
      lines << Formatter.error("Some applications are still installed, add them to #{Formatter.identifier("#{stanza} delete:")}", label: "Error")
      lines << installed_apps.join("\n")
    end

    if (installed_kexts = diff[:installed_kexts].added).any?
      lines << Formatter.error("Some kernel extensions are still installed, add them to #{Formatter.identifier("#{stanza} kext:")}", label: "Error")
      lines << installed_kexts.join("\n")
    end

    if (installed_packages = diff[:installed_pkgs].added).any?
      lines << Formatter.error("Some packages are still installed, add them to #{Formatter.identifier("#{stanza} pkgutil:")}", label: "Error")
      lines << installed_packages.join("\n")
    end

    if (installed_launchjobs = diff[:installed_launchjobs].added).any?
      lines << Formatter.error("Some launch jobs are still installed, add them to #{Formatter.identifier("#{stanza} launchctl:")}", label: "Error")
      lines << installed_launchjobs.join("\n")
    end

    running_apps = diff[:loaded_launchjobs]
                     .added
                     .select { |id| id.match?(/\.\d+\Z/) }
                     .map { |id| id.sub(/\.\d+\Z/, "") }

    loaded_launchjobs = diff[:loaded_launchjobs]
                         .added
                         .reject { |id| id.match?(/\.\d+\Z/) }

    if running_apps.any?
      lines << Formatter.error("Some applications are still running, add them to #{Formatter.identifier("#{stanza} quit:")}", label: "Error")
      lines << running_apps.join("\n")
    end

    if loaded_launchjobs.any?
      lines << Formatter.error("Some launch jobs were not unloaded, add them to #{Formatter.identifier("#{stanza} launchctl:")}", label: "Error")
      lines << loaded_launchjobs.join("\n")
    end

    lines.join("\n")
  end
end
