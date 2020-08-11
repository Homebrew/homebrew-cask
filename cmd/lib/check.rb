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

  def check_all
    CHECKS.transform_values(&:call)
  end
  private :check_all

  def before
    @diff = nil

    @before = check_all
  end

  def after
    @diff = nil

    @after = check_all
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

  def errors
    errors = []

    pkg_files = diff[:installed_pkgs]
                .added
                .flat_map { |id| Cask::Pkg.new(id).pkgutil_bom_all.map(&:to_s) }
    installed_apps = diff[:installed_apps].added - pkg_files
    if installed_apps.any?
      message = Formatter.error(
        "Some applications are still installed, add them to #{Formatter.identifier("uninstall delete:")}\n",
        label: "Error",
      )
      message += installed_apps.join("\n")
      errors << message
    end

    installed_kexts = diff[:installed_kexts].added
    if installed_kexts.any?
      message = Formatter.error(
        "Some kernel extensions are still installed, add them to #{Formatter.identifier("uninstall kext:")}\n",
        label: "Error",
      )
      message += installed_kexts.join("\n")
      errors << message
    end

    installed_packages = diff[:installed_pkgs].added
    if installed_packages.any?
      message = Formatter.error(
        "Some packages are still installed, add them to #{Formatter.identifier("uninstall pkgutil:")}\n",
        label: "Error",
      )
      message += installed_packages.join("\n")
      errors << message
    end

    installed_launchjobs = diff[:installed_launchjobs].added
    if installed_launchjobs.any?
      message = Formatter.error(
        "Some launch jobs are still installed, add them to #{Formatter.identifier("uninstall launchctl:")}\n",
        label: "Error",
      )
      message += installed_launchjobs.join("\n")
      errors << message
    end

    running_apps = diff[:loaded_launchjobs]
                   .added
                   .select { |id| id.match?(/\.\d+\Z/) }
                   .map { |id| id.sub(/\.\d+\Z/, "") }

    loaded_launchjobs = diff[:loaded_launchjobs]
                        .added
                        .reject { |id| id.match?(/\.\d+\Z/) }

    if running_apps.any?
      message = Formatter.error(
        "Some applications are still running, add them to #{Formatter.identifier("uninstall quit:")}\n",
        label: "Error",
      )
      message += running_apps.join("\n")
      errors << message
    end

    if loaded_launchjobs.any?
      message = Formatter.error(
        "Some launch jobs were not unloaded, add them to #{Formatter.identifier("uninstall launchctl:")}\n",
        label: "Error",
      )
      message += loaded_launchjobs.join("\n")
      errors << message
    end

    errors
  end
end
