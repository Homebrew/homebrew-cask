class Cask::Artifact::UninstallBase < Cask::Artifact::Base

  # todo: 500 is also hardcoded in cask/pkg.rb, but much of
  #       that logic is probably in the wrong location

  PATH_ARG_SLICE_SIZE = 500

  # todo: these methods were consolidated here from separate
  #       sources and should be refactored for consistency

  def self.expand_path_strings(path_strings)
    path_strings.map do |path_string|
      %r{\A~}.match(path_string) ? Pathname.new(path_string).expand_path : Pathname.new(path_string)
    end
  end

  def self.remove_relative_path_strings(action, path_strings)
    relative = path_strings.map do |path_string|
      path_string if %r{/\.\.(?:/|\Z)}.match(path_string) or ! %r{\A/}.match(path_string)
    end.compact
    relative.each do |path_string|
      opoo %Q{Skipping #{action} for relative path #{path_string}}
    end
    path_strings - relative
  end

  def install_phase
    odebug "Nothing to do. The uninstall artifact has no install phase."
  end

  def uninstall_phase
    dispatch_uninstall_directives(self.class.artifact_dsl_key)
  end

  def dispatch_uninstall_directives(stanza, expand_tilde=false)
    directives_set = @cask.artifacts[stanza]
    ohai "Running #{stanza} process for #{@cask}; your password may be necessary"

    directives_set.each do |directives|
      unknown_keys = directives.keys - [:early_script, :launchctl, :quit, :signal, :kext, :script, :pkgutil, :files, :delete, :trash, :rmdir]
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

    directives_set.select{ |h| h.key?(:delete) }.each do |directives|
      Array(directives[:delete]).flatten.each_slice(PATH_ARG_SLICE_SIZE) do |path_slice|
        ohai "Removing files: #{path_slice.utf8_inspect}"
        path_slice = self.class.expand_path_strings(path_slice) if expand_tilde
        path_slice = self.class.remove_relative_path_strings(:delete, path_slice)
        @command.run!('/bin/rm', :args => path_slice.unshift('-rf', '--'), :sudo => true)
      end
    end

    # :trash functionality is stubbed as a synonym for :delete
    # todo: make :trash work differently, moving files to the Trash
    directives_set.select{ |h| h.key?(:trash) }.each do |directives|
      Array(directives[:trash]).flatten.each_slice(PATH_ARG_SLICE_SIZE) do |path_slice|
        ohai "Removing files: #{path_slice.utf8_inspect}"
        path_slice = self.class.expand_path_strings(path_slice) if expand_tilde
        path_slice = self.class.remove_relative_path_strings(:trash, path_slice)
        @command.run!('/bin/rm', :args => path_slice.unshift('-rf', '--'), :sudo => true)
      end
    end

    # todo: remove support for deprecated :files both here and elsewhere
    directives_set.select{ |h| h.key?(:files) }.each do |directives|
      Array(directives[:files]).flatten.each_slice(PATH_ARG_SLICE_SIZE) do |path_slice|
        ohai "Removing files: #{path_slice.utf8_inspect}"
        path_slice = self.class.expand_path_strings(path_slice) if expand_tilde
        path_slice = self.class.remove_relative_path_strings(:delete, path_slice) # :delete for messages
        @command.run!('/bin/rm', :args => path_slice.unshift('-rf', '--'), :sudo => true)
      end
    end

    directives_set.select{ |h| h.key?(:rmdir) }.each do |directives|
      Array(directives[:rmdir]).flatten.each do |directory|
        directory = self.class.expand_path_strings([directory]).first if expand_tilde
        directory = self.class.remove_relative_path_strings(:rmdir, [ directory ]).first
        next unless directory.respond_to?(:length)
        next unless directory.length > 0
        ohai "Removing directory if empty: #{directory.utf8_inspect}"
        directory = Pathname.new(directory)
        next unless directory.exist?
        @command.run!('/bin/rm', :args => [ '-f', '--', directory.join('.DS_Store') ],
                                 :sudo => true,
                                 :stderr => :silence)
        @command.run('/bin/rmdir', :args => [ '--', directory ],
                                   :sudo => true,
                                   :stderr => :silence)
      end
    end
  end
end
