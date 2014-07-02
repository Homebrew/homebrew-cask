class Cask::Artifact::UninstallBase < Cask::Artifact::Base

  # todo: these methods were consolidated here from separate
  #       sources and, should be refactored for consistency

  def install_phase
    odebug "Nothing to do. The uninstall artifact has no install phase."
  end

  def uninstall_phase
    dispatch_uninstall_directives(self.class.artifact_dsl_key)
  end

  def dispatch_uninstall_directives(stanza)
    directives_set = @cask.artifacts[stanza]
    ohai "Running #{stanza} process for #{@cask}; your password may be necessary"

    directives_set.each do |directives|
      unknown_keys = directives.keys - [:early_script, :launchctl, :quit, :signal, :kext, :script, :pkgutil, :files]
      unless unknown_keys.empty?
        opoo %Q{Unknown arguments to #{stanza} -- #{unknown_keys.inspect}. Running "brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup" will likely fix it.}
      end
    end

    # Preserve prior functionality of script which runs first. Should rarely be needed.
    # :early_script should not delete files, better defer that to :script.
    # If Cask writers never need :early_script it may be removed in the future.
    directives_set.select{ |h| h.key?(:early_script) }.each do |directives|
      executable, script_arguments = self.class.read_script_arguments(directives,
                                                                      'uninstall',
                                                                      {:must_succeed => true},
                                                                      {:sudo => true, :print => true},
                                                                      :early_script)

      ohai "Running uninstall script #{executable}"
      raise CaskInvalidError.new(@cask, "#{stanza} :early_script without :executable") if executable.nil?
      @command.run(@cask.destination_path.join(executable), script_arguments)
      sleep 1
    end

    # :launchctl must come before :quit/:signal for cases where app would instantly re-launch
    directives_set.select{ |h| h.key?(:launchctl) }.each do |directives|
      Array(directives[:launchctl]).each do |service|
        ohai "Removing launchctl service #{service}"
        [false, true].each do |with_sudo|
          xml_status = @command.run('/bin/launchctl', :args => ['list', '-x', service], :sudo => with_sudo)
          if %r{^<\?xml}.match(xml_status)
            @command.run('/bin/launchctl',  :args => ['unload', '-w', '--', service], :sudo => with_sudo)
            sleep 1
            @command.run!('/bin/launchctl', :args => ['remove', service], :sudo => with_sudo)
            sleep 1
          end
        end
      end
    end

    # :quit/:signal must come before :kext so the kext will not be in use by a running process
    directives_set.select{ |h| h.key?(:quit) }.each do |directives|
      Array(directives[:quit]).each do |id|
        ohai "Quitting application ID #{id}"
        num_running = @command.run!('/usr/bin/osascript', :args => ['-e', %Q{tell application "System Events" to count processes whose bundle identifier is "#{id}"}], :sudo => true).to_i
        if num_running > 0
          @command.run!('/usr/bin/osascript', :args => ['-e', %Q{tell application id "#{id}" to quit}], :sudo => true)
          sleep 3
        end
      end
    end

    # :signal should come after :quit so it can be used as a backup when :quit fails
    directives_set.select{ |h| h.key?(:signal) }.each do |directives|
      Array(directives[:signal]).flatten.each_slice(2) do |pair|
        raise CaskInvalidError.new(@cask, "Each #{stanza} :signal must have 2 elements.") unless pair.length == 2
        signal, id = pair
        ohai "Signalling '#{signal}' to application ID '#{id}'"
        pid_string = @command.run!('/usr/bin/osascript', :args => ['-e', %Q{tell application "System Events" to get the unix id of every process whose bundle identifier is "#{id}"}], :sudo => true)
        if pid_string.match(%r{\A\d+(?:\s*,\s*\d+)*\Z})    # sanity check
          pids = pid_string.split(%r{\s*,\s*}).map(&:strip).map(&:to_i)
          if pids.length > 0
            # Note that unlike :quit, signals are sent from the
            # current user (not upgraded to the superuser).  This is a
            # todo item for the future, but there should be some
            # additional thought/safety checks about that, as a
            # misapplied "kill" by root could bring down the system.
            # The fact that we learned the pid from AppleScript is
            # already some degree of protection, though indirect.
            Process.kill(signal, *pids)
            sleep 3
          end
        end
      end
    end

    # :kext should be unloaded before attempting to delete the relevant file
    directives_set.select{ |h| h.key?(:kext) }.each do |directives|
      Array(directives[:kext]).each do |kext|
        ohai "Unloading kernel extension #{kext}"
        is_loaded = @command.run!('/usr/sbin/kextstat', :args => ['-l', '-b', kext], :sudo => true)
        if is_loaded.length > 1
          @command.run!('/sbin/kextunload', :args => ['-b', '--', kext], :sudo => true)
          sleep 1
        end
      end
    end

    # :script must come before :pkgutil or :files so that the script file is not already deleted
    directives_set.select{ |h| h.key?(:script) }.each do |directives|
      executable, script_arguments = self.class.read_script_arguments(directives,
                                                                      'uninstall',
                                                                      {:must_succeed => true},
                                                                      {:sudo => true, :print => true},
                                                                      :script)
      raise CaskInvalidError.new(@cask, "#{stanza} :script without :executable.") if executable.nil?
      @command.run(@cask.destination_path.join(executable), script_arguments)
      sleep 1
    end

    directives_set.select{ |h| h.key?(:pkgutil) }.each do |directives|
      ohai "Removing files from pkgutil Bill-of-Materials"
      Array(directives[:pkgutil]).each do |regexp|
        pkgs = Cask::Pkg.all_matching(regexp, @command)
        pkgs.each(&:uninstall)
      end
    end

    directives_set.select{ |h| h.key?(:files) }.each do |directives|
      Array(directives[:files]).flatten.each_slice(500) do |file_slice|
        ohai "Removing files: #{file_slice.utf8_inspect}"
        @command.run!('/bin/rm', :args => file_slice.unshift('-rf', '--'), :sudo => true)
      end
    end
  end
end
