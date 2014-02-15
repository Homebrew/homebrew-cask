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
      opoo "Unknown arguments to uninstall :#{key} -- :#{unknown_keys.join(", :")} (ignored). Running `brew update; brew upgrade brew-cask` will likely fix it.'"
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
    if @pkg_install_opts.respond_to?(:keys)
      @pkg_install_opts.assert_valid_keys( :allow_untrusted )
    elsif @pkg_install_opts
      raise "Bad install stanza in Cask #{@cask}"
    end
    raise "Bad install stanza in Cask #{@cask}" if pkg_description.nil?
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
    @cask.artifacts[:uninstall].each { |opts| manually_uninstall(opts) }
  end

  def run_installer(pkg_description)
    load_pkg_description pkg_description
    ohai "Running installer for #{@cask}; your password may be necessary."
    args = [
      '-pkg',    @cask.destination_path.join(pkg_relative_path),
      '-target', '/'
    ]
    args << '-verboseR' if ARGV.verbose?
    args << '-allowUntrusted' if pkg_install_opts :allow_untrusted
    @command.run!('/usr/sbin/installer', {:sudo => true, :args => args, :print => true})
  end

  def manually_uninstall(uninstall_options)
    ohai "Running uninstall process for #{@cask}; your password may be necessary"

    unknown_keys = uninstall_options.keys - [:early_script, :launchctl, :quit, :kext, :script, :pkgutil, :files]
    unless unknown_keys.empty?
      opoo "Unknown arguments to uninstall: #{unknown_keys.join(", ")}. Running `brew update; brew upgrade brew-cask` will likely fix it.'"
    end

    # Preserve prior functionality of script which runs first. Should rarely be needed.
    # :early_script should not delete files, better defer that to :script.
    # If Cask writers never need :early_script it may be removed in the future.
    if uninstall_options.key? :early_script
      executable, script_arguments = self.class.read_script_arguments(uninstall_options, :early_script)
      ohai "Running uninstall script #{executable}"
      raise "Error in Cask #{@cask}: uninstall :early_script without :executable." if executable.nil?
      @command.run(@cask.destination_path.join(executable), script_arguments)
      sleep 1
    end

    # :launchctl must come before :quit for cases where app would instantly re-launch
    if uninstall_options.key? :launchctl
      [*uninstall_options[:launchctl]].each do |service|
        ohai "Removing launchctl service #{service}"
        [false, true].each do |with_sudo|
          xml_status = @command.run('/bin/launchctl', :args => ['list', '-x', service], :sudo => with_sudo)
          if %r{^<\?xml}.match(xml_status)
            @command.run!('/bin/launchctl', :args => ['remove', '--', service], :sudo => with_sudo)
            sleep 1
          end
        end
      end
    end

    # :quit must come before :kext so the kext will not be in use by the app
    if uninstall_options.key? :quit
      [*uninstall_options[:quit]].each do |id|
        ohai "Quitting application ID #{id}"
        num_running = @command.run!('/usr/bin/osascript', :args => ['-e', %Q{tell application "System Events" to count processes whose bundle identifier is "#{id}"}], :sudo => true).to_i
        if num_running > 0
          @command.run!('/usr/bin/osascript', :args => ['-e', %Q{tell application id "#{id}" to quit}], :sudo => true)
          sleep 3
        end
      end
    end

    # :kext should be unloaded before attempting to delete the relevant file
    if uninstall_options.key? :kext
      [*uninstall_options[:kext]].each do |kext|
        ohai "Unloading kernel extension #{kext}"
        is_loaded = @command.run!('/usr/sbin/kextstat', :args => ['-l', '-b', kext], :sudo => true)
        if is_loaded.length > 1
          @command.run!('/sbin/kextunload', :args => ['-b', '--', kext], :sudo => true)
          sleep 1
        end
      end
    end

    # :script must come before :pkgutil or :files so that the script file is not already deleted
    if uninstall_options.key? :script
      executable, script_arguments = self.class.read_script_arguments(uninstall_options, :script)
      raise "Error in Cask #{@cask}: uninstall :script without :executable." if executable.nil?
      @command.run(@cask.destination_path.join(executable), script_arguments)
      sleep 1
    end

    if uninstall_options.key? :pkgutil
      ohai "Removing files from pkgutil Bill-of-Materials"
      pkgs = Cask::Pkg.all_matching(uninstall_options[:pkgutil], @command)
      pkgs.each(&:uninstall)
    end

    if uninstall_options.key? :files
      uninstall_options[:files].each do |file|
        ohai "Removing file #{file}"
        @command.run!('/bin/rm', :args => ['-rf', '--', file], :sudo => true)
      end
    end
  end
end
