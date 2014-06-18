class Cask::Artifact::Pkg < Cask::Artifact::Base
  # this class actually covers two keys, :install and :uninstall
  def self.artifact_dsl_key
    :install
  end

  def self.read_script_arguments(uninstall_options, key)
    script_arguments = uninstall_options[key]

    # backwards-compatible string value
    if script_arguments.kind_of?(String)
      script_arguments = { :executable => script_arguments }
    end

    # key sanity
    permitted_keys = [:args, :input, :executable, :must_succeed]
    unknown_keys = script_arguments.keys - permitted_keys
    unless unknown_keys.empty?
      opoo %Q{Unknown arguments to uninstall :#{key} -- :#{unknown_keys.join(", :")} (ignored). Running "brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup" will likely fix it.}
    end
    script_arguments.reject! {|k,v| ! permitted_keys.include?(k)}

    # extract executable
    if script_arguments.key?(:executable)
      executable = script_arguments.delete(:executable)
    else
      executable = nil
    end

    unless script_arguments.key?(:must_succeed)
      script_arguments[:must_succeed] = true
    end

    script_arguments.merge!(:sudo => true, :print => true)
    return executable, script_arguments
  end

  def load_pkg_description(pkg_description)
    @pkg_relative_path = pkg_description.shift
    @pkg_install_opts = pkg_description.shift
    begin
      if @pkg_install_opts.respond_to?(:keys)
        @pkg_install_opts.assert_valid_keys( :allow_untrusted )
      elsif @pkg_install_opts
        raise
      end
      raise if pkg_description.nil?
    rescue
      raise CaskInvalidError.new(@cask, 'Bad install stanza')
    end
  end

  def pkg_install_opts(opt)
    @pkg_install_opts[opt] if @pkg_install_opts.respond_to?(:keys)
  end

  def pkg_relative_path
    @pkg_relative_path
  end

  def install
    @cask.artifacts[:install].each { |pkg_description| run_installer(pkg_description) }
  end

  def uninstall
    manually_uninstall(@cask.artifacts[:uninstall])
  end

  def run_installer(pkg_description)
    load_pkg_description pkg_description
    ohai "Running installer for #{@cask}; your password may be necessary."
    source = @cask.destination_path.join(pkg_relative_path)
    unless source.exist?
      raise CaskError.new "pkg source file not found: '#{source}'"
    end
    args = [
      '-pkg',    source,
      '-target', '/'
    ]
    args << '-verboseR' if ARGV.verbose?
    args << '-allowUntrusted' if pkg_install_opts :allow_untrusted
    @command.run!('/usr/sbin/installer', {:sudo => true, :args => args, :print => true})
  end

  def manually_uninstall(uninstall_set)
    ohai "Running uninstall process for #{@cask}; your password may be necessary"

    uninstall_set.each do |uninstall_options|
      unknown_keys = uninstall_options.keys - [:early_script, :launchctl, :quit, :signal, :kext, :script, :pkgutil, :files]
      unless unknown_keys.empty?
        opoo %Q{Unknown arguments to uninstall: #{unknown_keys.join(", ")}. Running "brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup" will likely fix it.}
      end
    end

    # Preserve prior functionality of script which runs first. Should rarely be needed.
    # :early_script should not delete files, better defer that to :script.
    # If Cask writers never need :early_script it may be removed in the future.
    uninstall_set.select{ |h| h.key?(:early_script) }.each do |uninstall_options|
      executable, script_arguments = self.class.read_script_arguments(uninstall_options, :early_script)
      ohai "Running uninstall script #{executable}"
      raise CaskInvalidError.new(@cask, 'uninstall :early_script without :executable') if executable.nil?
      @command.run(@cask.destination_path.join(executable), script_arguments)
      sleep 1
    end

    # :launchctl must come before :quit/:signal for cases where app would instantly re-launch
    uninstall_set.select{ |h| h.key?(:launchctl) }.each do |uninstall_options|
      Array(uninstall_options[:launchctl]).each do |service|
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
    uninstall_set.select{ |h| h.key?(:quit) }.each do |uninstall_options|
      Array(uninstall_options[:quit]).each do |id|
        ohai "Quitting application ID #{id}"
        num_running = @command.run!('/usr/bin/osascript', :args => ['-e', %Q{tell application "System Events" to count processes whose bundle identifier is "#{id}"}], :sudo => true).to_i
        if num_running > 0
          @command.run!('/usr/bin/osascript', :args => ['-e', %Q{tell application id "#{id}" to quit}], :sudo => true)
          sleep 3
        end
      end
    end

    # :signal should come after :quit so it can be used as a backup when :quit fails
    uninstall_set.select{ |h| h.key?(:signal) }.each do |uninstall_options|
      Array(uninstall_options[:signal]).flatten.each_slice(2) do |pair|
        raise CaskInvalidError.new(@cask, 'Each uninstall :signal must have 2 elements.') unless pair.length == 2
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
    uninstall_set.select{ |h| h.key?(:kext) }.each do |uninstall_options|
      Array(uninstall_options[:kext]).each do |kext|
        ohai "Unloading kernel extension #{kext}"
        is_loaded = @command.run!('/usr/sbin/kextstat', :args => ['-l', '-b', kext], :sudo => true)
        if is_loaded.length > 1
          @command.run!('/sbin/kextunload', :args => ['-b', '--', kext], :sudo => true)
          sleep 1
        end
      end
    end

    # :script must come before :pkgutil or :files so that the script file is not already deleted
    uninstall_set.select{ |h| h.key?(:script) }.each do |uninstall_options|
      executable, script_arguments = self.class.read_script_arguments(uninstall_options, :script)
      raise CaskInvalidError.new(@cask, 'uninstall :script without :executable.') if executable.nil?
      @command.run(@cask.destination_path.join(executable), script_arguments)
      sleep 1
    end

    uninstall_set.select{ |h| h.key?(:pkgutil) }.each do |uninstall_options|
      ohai "Removing files from pkgutil Bill-of-Materials"
      Array(uninstall_options[:pkgutil]).each do |regexp|
        pkgs = Cask::Pkg.all_matching(regexp, @command)
        pkgs.each(&:uninstall)
      end
    end

    uninstall_set.select{ |h| h.key?(:files) }.each do |uninstall_options|
      Array(uninstall_options[:files]).flatten.each_slice(500) do |file_slice|
        ohai "Removing files: #{file_slice.utf8_inspect}"
        @command.run!('/bin/rm', :args => file_slice.unshift('-rf', '--'), :sudo => true)
      end
    end
  end
end
