require 'set'
require 'pathname'

class Hbc::Artifact::UninstallBase < Hbc::Artifact::Base

  # todo: 500 is also hardcoded in cask/pkg.rb, but much of
  #       that logic is probably in the wrong location

  PATH_ARG_SLICE_SIZE = 500

  # todo: There should be a way to specify a containing
  #       directory under which nothing can be deleted.
  #
  #       This set should be merged with the SYSTEM_DIRS
  #       set found in lib/cask/pkg.rb.
  UNDELETABLE_PATHS = Set.new [
                               '~/',
                               '~/Applications',
                               '~/Desktop',
                               '~/Documents',
                               '~/Downloads',
                               '~/Mail',
                               '~/Movies',
                               '~/Music',
                               '~/Music/iTunes',
                               '~/Music/iTunes/iTunes Music',
                               '~/Music/iTunes/Album Artwork',
                               '~/News',
                               '~/Pictures',
                               '~/Pictures/Desktops',
                               '~/Pictures/Photo Booth',
                               '~/Pictures/iChat Icons',
                               '~/Pictures/iPhoto Library',
                               '~/Public',
                               '~/Sites',
                               '~/Library',
                               '~/Library/.localized',
                               '~/Library/Accessibility',
                               '~/Library/Accounts',
                               '~/Library/Address Book Plug-Ins',
                               '~/Library/Application Scripts',
                               '~/Library/Application Support',
                               '~/Library/Application Support/Apple',
                               '~/Library/Application Support/com.apple.AssistiveControl',
                               '~/Library/Application Support/com.apple.QuickLook',
                               '~/Library/Application Support/com.apple.TCC',
                               '~/Library/Assistants',
                               '~/Library/Audio',
                               '~/Library/Automator',
                               '~/Library/Autosave Information',
                               '~/Library/Caches',
                               '~/Library/Calendars',
                               '~/Library/ColorPickers',
                               '~/Library/ColorSync',
                               '~/Library/Colors',
                               '~/Library/Components',
                               '~/Library/Compositions',
                               '~/Library/Containers',
                               '~/Library/Contextual Menu Items',
                               '~/Library/Cookies',
                               '~/Library/DTDs',
                               '~/Library/Desktop Pictures',
                               '~/Library/Developer',
                               '~/Library/Dictionaries',
                               '~/Library/DirectoryServices',
                               '~/Library/Displays',
                               '~/Library/Documentation',
                               '~/Library/Extensions',
                               '~/Library/Favorites',
                               '~/Library/FileSync',
                               '~/Library/Filesystems',
                               '~/Library/Filters',
                               '~/Library/FontCollections',
                               '~/Library/Fonts',
                               '~/Library/Frameworks',
                               '~/Library/GameKit',
                               '~/Library/Graphics',
                               '~/Library/Group Containers',
                               '~/Library/Icons',
                               '~/Library/IdentityServices',
                               '~/Library/Image Capture',
                               '~/Library/Images',
                               '~/Library/Input Methods',
                               '~/Library/Internet Plug-Ins',
                               '~/Library/InternetAccounts',
                               '~/Library/iTunes',
                               '~/Library/KeyBindings',
                               '~/Library/Keyboard Layouts',
                               '~/Library/Keychains',
                               '~/Library/LaunchAgents',
                               '~/Library/LaunchDaemons',
                               '~/Library/LocationBundles',
                               '~/Library/LoginPlugins',
                               '~/Library/Logs',
                               '~/Library/Mail',
                               '~/Library/Mail Downloads',
                               '~/Library/Messages',
                               '~/Library/Metadata',
                               '~/Library/Mobile Documents',
                               '~/Library/MonitorPanels',
                               '~/Library/OpenDirectory',
                               '~/Library/PDF Services',
                               '~/Library/PhonePlugins',
                               '~/Library/Phones',
                               '~/Library/PreferencePanes',
                               '~/Library/Preferences',
                               '~/Library/Printers',
                               '~/Library/PrivateFrameworks',
                               '~/Library/PubSub',
                               '~/Library/QuickLook',
                               '~/Library/QuickTime',
                               '~/Library/Receipts',
                               '~/Library/Recent Servers',
                               '~/Library/Recents',
                               '~/Library/Safari',
                               '~/Library/Saved Application State',
                               '~/Library/Screen Savers',
                               '~/Library/ScreenReader',
                               '~/Library/ScriptingAdditions',
                               '~/Library/ScriptingDefinitions',
                               '~/Library/Scripts',
                               '~/Library/Security',
                               '~/Library/Services',
                               '~/Library/Sounds',
                               '~/Library/Speech',
                               '~/Library/Spelling',
                               '~/Library/Spotlight',
                               '~/Library/StartupItems',
                               '~/Library/StickiesDatabase',
                               '~/Library/Sync Services',
                               '~/Library/SyncServices',
                               '~/Library/SyncedPreferences',
                               '~/Library/TextEncodings',
                               '~/Library/User Pictures',
                               '~/Library/Video',
                               '~/Library/Voices',
                               '~/Library/WebKit',
                               '~/Library/WidgetResources',
                               '~/Library/Widgets',
                               '~/Library/Workflows',
                              ].map{|x| %r{\A~}.match(x) ? Pathname.new(x).expand_path : Pathname.new(x)}

  ORDERED_DIRECTIVES = [
                        :early_script,
                        :launchctl,
                        :quit,
                        :signal,
                        :login_item,
                        :kext,
                        :script,
                        :pkgutil,
                        :delete,
                        :trash,
                        :rmdir
                       ]

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

  def self.remove_undeletable_path_strings(action, path_strings)
    undeletable = path_strings.map do |path_string|
      path_string if UNDELETABLE_PATHS.include?(Pathname.new(path_string))
    end.compact
    undeletable.each do |path_string|
      opoo %Q{Skipping #{action} for undeletable path #{path_string}}
    end
    path_strings - undeletable
  end

  def install_phase
    odebug "Nothing to do. The uninstall artifact has no install phase."
  end

  def uninstall_phase
    dispatch_uninstall_directives
  end

  def dispatch_uninstall_directives(expand_tilde=true)
    directives_set = @cask.artifacts[stanza]
    ohai "Running #{stanza} process for #{@cask}; your password may be necessary"

    directives_set.each do |directives|
      warn_for_unknown_directives(directives)
    end

    ORDERED_DIRECTIVES.each do |directive_sym|
      directives_set.select { |h| h.key?(directive_sym) }.each do |directives|
        args = [directives]
        args << expand_tilde if [:delete, :trash, :rmdir].include?(directive_sym)
        send("uninstall_#{directive_sym}", *args)
      end
    end
  end

  private

  def stanza
    self.class.artifact_dsl_key
  end

  def warn_for_unknown_directives(directives)
    unknown_keys = directives.keys - ORDERED_DIRECTIVES
    unless unknown_keys.empty?
      opoo %Q{Unknown arguments to #{stanza} -- #{unknown_keys.inspect}. Running "brew update; brew cleanup; brew cask cleanup" will likely fix it.}
    end
  end

  # Preserve prior functionality of script which runs first. Should rarely be needed.
  # :early_script should not delete files, better defer that to :script.
  # If Cask writers never need :early_script it may be removed in the future.
  def uninstall_early_script(directives)
    uninstall_script(directives, directive_name: :early_script)
  end

  # :launchctl must come before :quit/:signal for cases where app would instantly re-launch
  def uninstall_launchctl(directives)
    Array(directives[:launchctl]).each do |service|
      ohai "Removing launchctl service #{service}"
      [false, true].each do |with_sudo|
        plist_status = @command.run('/bin/launchctl', :args => ['list', service], :sudo => with_sudo, :print_stderr => false).stdout
        if %r{^\{}.match(plist_status)
          result = @command.run!('/bin/launchctl', :args => ['remove', service], :sudo => with_sudo)
          sleep 1
        end
        paths = ["/Library/LaunchAgents/#{service}.plist",
                 "/Library/LaunchDaemons/#{service}.plist"]
        paths.each { |elt| elt.prepend(ENV['HOME']) } unless with_sudo
        paths = paths.map { |elt| Pathname(elt) }.select(&:exist?)
        paths.each do |path|
          @command.run!('/bin/rm', :args => ['-f', '--', path], :sudo => with_sudo)
        end
        # undocumented and untested: pass a path to uninstall :launchctl
        if Pathname(service).exist?
          @command.run!('/bin/launchctl', :args => ['unload', '-w', '--', service], :sudo => with_sudo)
          @command.run!('/bin/rm',        :args => ['-f', '--', service], :sudo => with_sudo)
          sleep 1
        end
      end
    end
  end

  # :quit/:signal must come before :kext so the kext will not be in use by a running process
  def uninstall_quit(directives)
    Array(directives[:quit]).each do |id|
      ohai "Quitting application ID #{id}"
      num_running = count_running_processes(id)
      next unless num_running > 0
      @command.run!('/usr/bin/osascript', :args => ['-e', %Q{tell application id "#{id}" to quit}], :sudo => true)
      sleep 3
    end
  end

  # :signal should come after :quit so it can be used as a backup when :quit fails
  def uninstall_signal(directives)
    Array(directives[:signal]).flatten.each_slice(2) do |pair|
      raise Hbc::CaskInvalidError.new(@cask, "Each #{stanza} :signal must have 2 elements.") unless pair.length == 2
      signal, id = pair
      ohai "Signalling '#{signal}' to application ID '#{id}'"
      pids = get_unix_pids(id)
      next unless pids.any?
      # Note that unlike :quit, signals are sent from the current user (not
      # upgraded to the superuser).  This is a todo item for the future, but
      # there should be some additional thought/safety checks about that, as a
      # misapplied "kill" by root could bring down the system. The fact that we
      # learned the pid from AppleScript is already some degree of protection,
      # though indirect.
      odebug "Unix ids are #{pids.inspect} for processes with bundle identifier #{id}"
      Process.kill(signal, *pids)
      sleep 3
    end
  end

  def count_running_processes(bundle_id)
    @command.run!('/usr/bin/osascript',
                  :args => ['-e', %Q{tell application "System Events" to count processes whose bundle identifier is "#{bundle_id}"}],
                  :sudo => true).stdout.to_i
  end

  def get_unix_pids(bundle_id)
    pid_string = @command.run!('/usr/bin/osascript',
                               :args => ['-e', %Q{tell application "System Events" to get the unix id of every process whose bundle identifier is "#{bundle_id}"}],
                               :sudo => true).stdout.chomp
    return [] unless pid_string.match(%r{\A\d+(?:\s*,\s*\d+)*\Z}) # sanity check
    pid_string.split(%r{\s*,\s*}).map(&:strip).map(&:to_i)
  end

  def uninstall_login_item(directives)
    Array(directives[:login_item]).each do |name|
      ohai "Removing login item #{name}"
      @command.run!('/usr/bin/osascript',
                    :args => ['-e', %Q{tell application "System Events" to delete every login item whose name is "#{name}"}],
                    :sudo => false)
      sleep 1
    end
  end

  # :kext should be unloaded before attempting to delete the relevant file
  def uninstall_kext(directives)
    Array(directives[:kext]).each do |kext|
      ohai "Unloading kernel extension #{kext}"
      is_loaded = @command.run!('/usr/sbin/kextstat', :args => ['-l', '-b', kext], :sudo => true).stdout
      if is_loaded.length > 1
        @command.run!('/sbin/kextunload', :args => ['-b', kext], :sudo => true)
        sleep 1
      end
    end
  end

  # :script must come before :pkgutil, :delete, or :trash so that the script file is not already deleted
  def uninstall_script(directives, directive_name: :script)
    executable, script_arguments = self.class.read_script_arguments(directives,
                                                                    'uninstall',
                                                                    {:must_succeed => true, :sudo => true},
                                                                    {:print_stdout => true},
                                                                    directive_name)
    ohai "Running uninstall script #{executable}"
    raise Hbc::CaskInvalidError.new(@cask, "#{stanza} :#{directive_name} without :executable.") if executable.nil?
    executable_path = @cask.staged_path.join(executable)
    @command.run('/bin/chmod', :args => ['+x', '--', executable_path]) if File.exists?(executable_path)
    @command.run(executable_path, script_arguments)
    sleep 1
  end

  def uninstall_pkgutil(directives)
    ohai "Removing files from pkgutil Bill-of-Materials"
    Array(directives[:pkgutil]).each do |regexp|
      pkgs = Hbc::Pkg.all_matching(regexp, @command)
      pkgs.each(&:uninstall)
    end
  end

  def uninstall_delete(directives, expand_tilde=true)
    Array(directives[:delete]).concat(Array(directives[:trash])).flatten.each_slice(PATH_ARG_SLICE_SIZE) do |path_slice|
      ohai "Removing files: #{path_slice.utf8_inspect}"
      path_slice = self.class.expand_path_strings(path_slice) if expand_tilde
      path_slice = self.class.remove_relative_path_strings(:delete, path_slice)
      path_slice = self.class.remove_undeletable_path_strings(:delete, path_slice)
      @command.run!('/bin/rm', :args => path_slice.unshift('-rf', '--'), :sudo => true)
    end
  end

  # :trash functionality is stubbed as a synonym for :delete
  # todo: make :trash work differently, moving files to the Trash
  def uninstall_trash(directives, expand_tilde=true)
    uninstall_delete(directives, expand_tilde)
  end

  def uninstall_rmdir(directives, expand_tilde=true)
    Array(directives[:rmdir]).flatten.each do |directory|
      directory = self.class.expand_path_strings([directory]).first if expand_tilde
      directory = self.class.remove_relative_path_strings(:rmdir, [ directory ]).first
      directory = self.class.remove_undeletable_path_strings(:rmdir, [ directory ]).first
      next unless directory.to_s.length > 0
      ohai "Removing directory if empty: #{directory.to_s.utf8_inspect}"
      directory = Pathname.new(directory)
      next unless directory.exist?
      @command.run!('/bin/rm', :args => [ '-f', '--', directory.join('.DS_Store') ],
                               :sudo => true,
                               :print_stderr => false)
      @command.run('/bin/rmdir', :args => [ '--', directory ],
                                 :sudo => true,
                                 :print_stderr => false)
    end
  end
end
