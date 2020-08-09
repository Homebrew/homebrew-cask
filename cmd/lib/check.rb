require "forwardable"

class Check
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
    loaded_launchjobs:    lambda {
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
  }.freeze

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

    CHECKS.each_key do |name|
      @diff[name] = Diff.new(@before[name], @after[name])
    end

    @diff
  end
  private :diff

  def success?(stanza:)
    diff.values.all? { |v| filter_exceptions(v.added, stanza: stanza).none? }
  end

  def zap_exception?(id)
    [
      "com.microsoft.autoupdate.helper",
      "com.microsoft.package.Microsoft_AU_Bootstrapper.app",
      "com.microsoft.package.Microsoft_AutoUpdate.app",
      "com.microsoft.update.agent",
    ].include?(id)
  end

  def filter_exceptions(ids, stanza:)
    ids.reject { |id| stanza == :uninstall ? zap_exception?(id) : false }
  end

  def errors(stanza:)
    errors = []

    pkg_files = diff[:installed_pkgs]
                .added
                .flat_map { |id| Cask::Pkg.new(id).pkgutil_bom_all.map(&:to_s) }
    installed_apps = filter_exceptions(diff[:installed_apps].added - pkg_files, stanza: stanza)
    if installed_apps.any?
      message = Formatter.error(
        "Some applications are still installed, add them to #{Formatter.identifier("#{stanza} delete:")}\n",
        label: "Error",
      )
      message += installed_apps.join("\n")
      errors << message
    end

    installed_kexts = filter_exceptions(diff[:installed_kexts].added, stanza: stanza)
    if installed_kexts.any?
      message = Formatter.error(
        "Some kernel extensions are still installed, add them to #{Formatter.identifier("#{stanza} kext:")}\n",
        label: "Error",
      )
      message += installed_kexts.join("\n")
      errors << message
    end

    installed_packages = filter_exceptions(diff[:installed_pkgs].added, stanza: stanza)
    if installed_packages.any?
      message = Formatter.error(
        "Some packages are still installed, add them to #{Formatter.identifier("#{stanza} pkgutil:")}\n",
        label: "Error",
      )
      message += installed_packages.join("\n")
      errors << message
    end

    installed_launchjobs = filter_exceptions(diff[:installed_launchjobs].added, stanza: stanza)
    if installed_launchjobs.any?
      message = Formatter.error(
        "Some launch jobs are still installed, add them to #{Formatter.identifier("#{stanza} launchctl:")}\n",
        label: "Error",
      )
      message += installed_launchjobs.join("\n")
      errors << message
    end

    running_apps = filter_exceptions(diff[:loaded_launchjobs]
                   .added
                   .select { |id| id.match?(/\.\d+\Z/) }
                   .map { |id| id.sub(/\.\d+\Z/, "") }, stanza: stanza)

    loaded_launchjobs = filter_exceptions(diff[:loaded_launchjobs]
                        .added
                        .reject { |id| id.match?(/\.\d+\Z/) }, stanza: stanza)

    if running_apps.any?
      message = Formatter.error(
        "Some applications are still running, add them to #{Formatter.identifier("#{stanza} quit:")}\n",
        label: "Error",
      )
      message += running_apps.join("\n")
      errors << message
    end

    if loaded_launchjobs.any?
      message = Formatter.error(
        "Some launch jobs were not unloaded, add them to #{Formatter.identifier("#{stanza} launchctl:")}\n",
        label: "Error",
      )
      message += loaded_launchjobs.join("\n")
      errors << message
    end

    errors
  end
end
