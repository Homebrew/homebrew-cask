class Cask::PkgInstaller
  def initialize(cask, command=Cask::SystemCommand)
    @cask = cask
    @command = command
  end

  def install
    @cask.installers.each do |installer|
      ohai "Running installer for #{@cask}; your password may be necessary."
      @command.run("installer", {
        :sudo => true,
        :args => %W[-pkg #{installer} -target /],
        :print => true
      })
    end
  end

  def uninstall
    @cask.uninstallables.each do |uninstall_options|
      ohai "Running uninstall process for #{@cask}; your password may be necessary."
      if uninstall_options.key? :script
        @command.run(
          @cask.destination_path.join(uninstall_options[:script]),
          uninstall_options.merge(:sudo => true, :print => true)
        )
      end

      if uninstall_options.key? :kext
        [*uninstall_options[:kext]].each do |kext|
          ohai "Unloading kernel extension #{kext}"
          @command.run('kextunload', :args => ['-b', kext], :sudo => true)
        end
      end

      if uninstall_options.key? :pkgutil
        pkgs = Cask::Pkg.all_matching(uninstall_options[:pkgutil], @command)
        pkgs.each(&:uninstall)
      end

      if uninstall_options.key? :launchctl
        [*uninstall_options[:launchctl]].each do |service|
          ohai "Removing launchctl service #{service}"
          @command.run('launchctl', :args => ['remove', service], :sudo => true)
        end
      end

      if uninstall_options.key? :files
        uninstall_options[:files].each do |file|
          ohai "Removing file #{file}"
          @command.run('rm', :args => ['-rf', file], :sudo => true)
        end
      end
    end
  end
end
