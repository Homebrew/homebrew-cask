class Cask::Artifact::Pkg < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:install].any?
  end

  def install
    @cask.artifacts[:install].each { |pkg| run_installer(pkg) }
  end

  def uninstall
    @cask.artifacts[:uninstall].each { |opts| manually_uninstall(opts) }
  end

  def run_installer(pkg_relative_path)
    ohai "Running installer for #{@cask}; your password may be necessary."
    args = [
      '-pkg',    @cask.destination_path.join(pkg_relative_path),
      '-target', '/'
    ]
    args << '-verboseR' if ARGV.verbose?
    @command.run!('installer', {:sudo => true, :args => args, :print => true})
  end

  def manually_uninstall(uninstall_options)

    unknown_keys = uninstall_options.keys - [:script, :quit, :kext, :pkgutil, :launchctl, :files]
    unless unknown_keys.empty?
      opoo "Unknown arguments to uninstall: #{unknown_keys.join(", ")}. Running `brew update; brew upgrade brew-cask` will likely fix it.'"
    end

    ohai "Running uninstall process for #{@cask}; your password may be necessary."
    if uninstall_options.key? :script
      @command.run!(
        @cask.destination_path.join(uninstall_options[:script]),
        uninstall_options.merge(:sudo => true, :print => true)
      )
    end

    if uninstall_options.key? :launchctl
      [*uninstall_options[:launchctl]].each do |service|
        ohai "Removing launchctl service #{service}"
        @command.run!('launchctl', :args => ['remove', service], :sudo => true)
      end
    end

    if uninstall_options.key? :quit
      [*uninstall_options[:quit]].each do |id|
        ohai "Quitting application ID #{id}"
        is_running = @command.run!('osascript', :args => ['-e', "if application id \"#{id}\" is running then 1"], :sudo => true)
        if is_running == "1\n"
          @command.run!('osascript', :args => ['-e', "tell application id \"#{id}\" to quit"], :sudo => true)
        end
      end
    end

    if uninstall_options.key? :kext
      [*uninstall_options[:kext]].each do |kext|
        ohai "Unloading kernel extension #{kext}"
        @command.run!('kextunload', :args => ['-b', kext], :sudo => true)
      end
    end

    if uninstall_options.key? :pkgutil
      pkgs = Cask::Pkg.all_matching(uninstall_options[:pkgutil], @command)
      pkgs.each(&:uninstall)
    end

    if uninstall_options.key? :files
      uninstall_options[:files].each do |file|
        ohai "Removing file #{file}"
        @command.run!('rm', :args => ['-rf', file], :sudo => true)
      end
    end
  end
end

