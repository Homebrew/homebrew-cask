class Cask::Pkg
  SYSTEM_DIRS = [
                 '/',
                 '/Applications',
                 '/Applications/Utilities',
                 '/Incompatible Software',
                 '/Library',
                 '/Library/Application Support',
                 '/Library/Audio',
                 '/Library/Caches',
                 '/Library/ColorPickers',
                 '/Library/ColorSync',
                 '/Library/Components',
                 '/Library/Compositions',
                 '/Library/Contextual Menu Items',
                 '/Library/CoreMediaIO',
                 '/Library/Desktop Pictures',
                 '/Library/Developer',
                 '/Library/Dictionaries',
                 '/Library/DirectoryServices',
                 '/Library/Documentation',
                 '/Library/Extensions',
                 '/Library/Filesystems',
                 '/Library/Fonts',
                 '/Library/Frameworks',
                 '/Library/Graphics',
                 '/Library/Image Capture',
                 '/Library/Input Methods',
                 '/Library/Internet Plug-Ins',
                 '/Library/Java',
                 '/Library/Keyboard Layouts',
                 '/Library/Keychains',
                 '/Library/LaunchAgents',
                 '/Library/LaunchDaemons',
                 '/Library/Logs',
                 '/Library/Messages',
                 '/Library/Modem Scripts',
                 '/Library/OpenDirectory',
                 '/Library/PDF Services',
                 '/Library/Perl',
                 '/Library/PreferencePanes',
                 '/Library/Preferences',
                 '/Library/Printers',
                 '/Library/PrivilegedHelperTools',
                 '/Library/Python',
                 '/Library/QuickLook',
                 '/Library/QuickTime',
                 '/Library/Receipts',
                 '/Library/Ruby',
                 '/Library/Sandbox',
                 '/Library/Screen Savers',
                 '/Library/ScriptingAdditions',
                 '/Library/Scripts',
                 '/Library/Security',
                 '/Library/Speech',
                 '/Library/Spelling',
                 '/Library/Spotlight',
                 '/Library/StartupItems',
                 '/Library/SystemProfiler',
                 '/Library/Updates',
                 '/Library/User Pictures',
                 '/Library/Video',
                 '/Library/WebServer',
                 '/Library/Widgets',
                 '/Library/iTunes',
                 '/Network',
                 '/System',
                 '/System/Library',
                 '/System/Library/Accessibility',
                 '/System/Library/Accounts',
                 '/System/Library/Address Book Plug-Ins',
                 '/System/Library/Assistant',
                 '/System/Library/Automator',
                 '/System/Library/BridgeSupport',
                 '/System/Library/Caches',
                 '/System/Library/ColorPickers',
                 '/System/Library/ColorSync',
                 '/System/Library/Colors',
                 '/System/Library/Components',
                 '/System/Library/Compositions',
                 '/System/Library/CoreServices',
                 '/System/Library/DTDs',
                 '/System/Library/DirectoryServices',
                 '/System/Library/Displays',
                 '/System/Library/Extensions',
                 '/System/Library/Filesystems',
                 '/System/Library/Filters',
                 '/System/Library/Fonts',
                 '/System/Library/Frameworks',
                 '/System/Library/Graphics',
                 '/System/Library/IdentityServices',
                 '/System/Library/Image Capture',
                 '/System/Library/Input Methods',
                 '/System/Library/InternetAccounts',
                 '/System/Library/Java',
                 '/System/Library/KerberosPlugins',
                 '/System/Library/Keyboard Layouts',
                 '/System/Library/Keychains',
                 '/System/Library/LaunchAgents',
                 '/System/Library/LaunchDaemons',
                 '/System/Library/LinguisticData',
                 '/System/Library/LocationBundles',
                 '/System/Library/LoginPlugins',
                 '/System/Library/Messages',
                 '/System/Library/Metadata',
                 '/System/Library/MonitorPanels',
                 '/System/Library/OpenDirectory',
                 '/System/Library/OpenSSL',
                 '/System/Library/Password Server Filters',
                 '/System/Library/PerformanceMetrics',
                 '/System/Library/Perl',
                 '/System/Library/PreferencePanes',
                 '/System/Library/Printers',
                 '/System/Library/PrivateFrameworks',
                 '/System/Library/QuickLook',
                 '/System/Library/QuickTime',
                 '/System/Library/QuickTimeJava',
                 '/System/Library/Recents',
                 '/System/Library/SDKSettingsPlist',
                 '/System/Library/Sandbox',
                 '/System/Library/Screen Savers',
                 '/System/Library/ScreenReader',
                 '/System/Library/ScriptingAdditions',
                 '/System/Library/ScriptingDefinitions',
                 '/System/Library/Security',
                 '/System/Library/Services',
                 '/System/Library/Sounds',
                 '/System/Library/Speech',
                 '/System/Library/Spelling',
                 '/System/Library/Spotlight',
                 '/System/Library/StartupItems',
                 '/System/Library/SyncServices',
                 '/System/Library/SystemConfiguration',
                 '/System/Library/SystemProfiler',
                 '/System/Library/Tcl',
                 '/System/Library/TextEncodings',
                 '/System/Library/User Template',
                 '/System/Library/UserEventPlugins',
                 '/System/Library/Video',
                 '/System/Library/WidgetResources',
                 '/User Information',
                 '/Users',
                 '/Volumes',
                 '/bin',
                 '/boot',
                 '/cores',
                 '/dev',
                 '/etc',
                 '/etc/X11',
                 '/etc/opt',
                 '/etc/sgml',
                 '/etc/xml',
                 '/home',
                 '/libexec',
                 '/lost+found',
                 '/media',
                 '/mnt',
                 '/net',
                 '/opt',
                 '/private',
                 '/private/etc',
                 '/private/tftpboot',
                 '/private/tmp',
                 '/private/var',
                 '/proc',
                 '/root',
                 '/sbin',
                 '/srv',
                 '/tmp',
                 '/usr',
                 '/usr/X11R6',
                 '/usr/bin',
                 '/usr/etc',
                 '/usr/include',
                 '/usr/lib',
                 '/usr/libexec',
                 '/usr/local',
                 '/usr/local/Cellar',
                 '/usr/local/Frameworks',
                 '/usr/local/Library',
                 '/usr/local/bin',
                 '/usr/local/etc',
                 '/usr/local/include',
                 '/usr/local/lib',
                 '/usr/local/libexec',
                 '/usr/local/opt',
                 '/usr/local/share',
                 '/usr/local/share/man',
                 '/usr/local/share/man/man1',
                 '/usr/local/share/man/man2',
                 '/usr/local/share/man/man3',
                 '/usr/local/share/man/man4',
                 '/usr/local/share/man/man5',
                 '/usr/local/share/man/man6',
                 '/usr/local/share/man/man7',
                 '/usr/local/share/man/man8',
                 '/usr/local/share/man/man9',
                 '/usr/local/share/man/mann',
                 '/usr/local/var',
                 '/usr/local/var/lib',
                 '/usr/local/var/lock',
                 '/usr/local/var/run',
                 '/usr/sbin',
                 '/usr/share',
                 '/usr/share/man',
                 '/usr/share/man/man1',
                 '/usr/share/man/man2',
                 '/usr/share/man/man3',
                 '/usr/share/man/man4',
                 '/usr/share/man/man5',
                 '/usr/share/man/man6',
                 '/usr/share/man/man7',
                 '/usr/share/man/man8',
                 '/usr/share/man/man9',
                 '/usr/share/man/mann',
                 '/usr/src',
                 '/var',
                 '/var/cache',
                 '/var/lib',
                 '/var/lock',
                 '/var/log',
                 '/var/mail',
                 '/var/run',
                 '/var/spool',
                 '/var/spool/mail',
                 '/var/tmp',
                ].map{|x| Pathname.new(x)}

  def self.all_matching(regexp, command)
    command.run('/usr/sbin/pkgutil', :args => [%Q{--pkgs=#{regexp}}]).stdout.split("\n").map do |package_id|
      new(package_id.chomp, command)
    end
  end

  attr_reader :package_id

  def initialize(package_id, command=Cask::SystemCommand)
    @package_id = package_id
    @command = command
  end

  def uninstall
    odebug "Deleting pkg files"
    pkgutil_bom_files.each_slice(500) do |file_slice|
      @command.run('/bin/rm', :args => file_slice.unshift('-f', '--'), :sudo => true)
    end
    odebug "Deleting pkg symlinks and special files"
    pkgutil_bom_specials.each_slice(500) do |file_slice|
      @command.run('/bin/rm', :args => file_slice.unshift('-f', '--'), :sudo => true)
    end
    odebug "Deleting pkg directories"
    _deepest_path_first(pkgutil_bom_dirs).each do |dir|
      if dir.exist? and !SYSTEM_DIRS.include?(dir)
        _with_full_permissions(dir) do
          _clean_broken_symlinks(dir)
          _clean_ds_store(dir)
          _rmdir(dir)
        end
      end
    end
    forget
  end

  def forget
    odebug "Unregistering pkg receipt (aka forgetting)"
    @command.run!('/usr/sbin/pkgutil', :args => ['--forget', package_id], :sudo => true)
  end

  def pkgutil_bom_files
    @command.run!('/usr/sbin/pkgutil',
      :args => ['--only-files', '--files', package_id]
    ).stdout.split("\n").map { |path| root.join(path) }
  end

  def pkgutil_bom_dirs
    @command.run!('/usr/sbin/pkgutil',
      :args => ['--only-dirs', '--files', package_id]
    ).stdout.split("\n").map { |path| root.join(path) }
  end

  def pkgutil_bom_all
    @command.run!('/usr/sbin/pkgutil',
      :args => ['--files', package_id]
    ).stdout.split("\n").map { |path| root.join(path) }
  end

  def pkgutil_bom_specials
    pkgutil_bom_all - pkgutil_bom_files - pkgutil_bom_dirs
  end

  def root
    @root ||= Pathname(info.fetch('volume')).join(info.fetch('install-location'))
  end

  def info
    @command.run!('/usr/sbin/pkgutil',
                  :args => ['--pkg-info-plist', package_id]
                 ).plist
  end

  def _rmdir(path)
    if path.children.empty?
      @command.run!('/bin/rmdir', :args => ['--', path], :sudo => true)
    end
  end

  def _with_full_permissions(path, &block)
    original_mode = (path.stat.mode % 01000).to_s(8)
    # todo: similarly read and restore OS X flags (cf man chflags)
    @command.run!('/bin/chmod', :args => ['--', '777', path], :sudo => true)
    block.call
  ensure
    if path.exist? # block may have removed dir
      @command.run!('/bin/chmod', :args => ['--', original_mode, path], :sudo => true)
    end
  end

  def _deepest_path_first(paths)
    paths.sort do |path_a, path_b|
      path_b.to_s.split('/').count <=> path_a.to_s.split('/').count
    end
  end

  # Some pkgs leave broken symlinks hanging around; we clean them out before
  # attempting to rmdir to prevent extra cruft from lying around after
  # uninstall
  def _clean_broken_symlinks(dir)
    dir.children.each do |child|
      if _broken_symlink?(child)
        @command.run!('/bin/rm', :args => ['--', child], :sudo => true)
      end
    end
  end

  def _clean_ds_store(dir)
    ds_store = dir.join('.DS_Store')
    @command.run!('/bin/rm', :args => ['--', ds_store], :sudo => true) if ds_store.exist?
  end

  def _broken_symlink?(path)
    path.symlink? and !path.exist?
  end
end
