require 'rubygems'

class Cask::CLI::Alfred < Cask::CLI::Base
  DEFAULT_SCOPES = [
    '/Applications',
    '/Applications/Xcode.app/Contents/Applications',
    '/Developer/Applications',
    '/Library/PreferencePanes',
    '/System/Library/CoreServices/Applications',
    '/System/Library/PreferencePanes',
    '~/Library/Caches/Metadata/',
    '~/Library/Mobile Documents/',
    '~/Library/PreferencePanes'
  ]
  PRIMARY_DOMAIN = 'com.runningwithcrayons.Alfred-Preferences'
  PRIMARY_SCOPES_KEY = 'features.defaultresults.scope'

  # http://www.alfredforum.com/topic/4810-alfred%E2%80%99s-scope-can-no-longer-be-changed-programatically/?p=29434
  LOCALPREFS_SUBPATH = '/Alfred.alfredpreferences/preferences/local/*/features/defaultresults/prefs.plist'
  LOCALPREFS_SYNCDIR_KEY = 'syncfolder'
  LOCALPREFS_SCOPES_KEY = 'scope'

  def self.run(*args)
    subcommand = args.first

    if args.length > 1 && args.last.is_a?(Class)
      @system_command = args.last
    else
      @system_command = Cask::SystemCommand
    end

    case subcommand
    when 'link' then link
    when 'unlink' then unlink
    when 'status' then status
    else
      usage
    end
  end

  def self.help
    "used to modify Alfred's scope to include the Caskroom"
  end

  def self.assert_installed
    unless alfred_2_installed?
      opoo "Could not find Alfred 2 preferences. Alfred 2 is probably not installed."
    end
    if alfred_localprefs? and localprefs_scopes_files.size < 1
      raise CaskError.new "Alfred 2.4+ detected, but local preferences file not found. Try running Alfred first."
    end
    alfred_2_installed?
  end

  def self.link
    return unless assert_installed

    if linked?
      opoo "Alfred appears to be already linked. Updating defaults anyway."
    end
    odebug 'Linking Alfred scopes'
    # this silly ternary operation is for precise compat with Ruby 1.8
    save_alfred_scopes( alfred_scopes.include?(Cask.caskroom.to_s) ? alfred_scopes : alfred_scopes + [ Cask.caskroom.to_s ])
    ohai "Successfully linked Alfred to homebrew-cask."
  end

  def self.unlink
    return unless assert_installed

    unless linked?
      opoo "Alfred appears to be already unlinked. Updating defaults anyway."
    end
    odebug 'Unlinking Alfred scopes'
    save_alfred_scopes(alfred_scopes.reject { |x| x == Cask.caskroom.to_s })
    ohai "Successfully unlinked Alfred from homebrew-cask."
  end

  def self.status
    return unless assert_installed

    if linked?
      ohai "Alfred is happily linked to homebrew-cask!"
    else
      ohai "Alfred is not linked to homebrew-cask."
    end
    if alfred_localprefs? and localprefs_scopes_files.size > 1
      opoo "Multiple local preference files detected. 'brew cask alfred status' may be inaccurate."
    end
  end

  def self.save_alfred_scopes(scopes)
    alfred_preference(PRIMARY_SCOPES_KEY, %Q{(#{scopes.map { |s| "'#{s}'" }.join(',')})})
  end

  def self.alfred_version
    begin
      # reset the version every time when running under the test harness
      # todo: I don't know the right way to detect that; using const_get
      Cask.const_get(:FakeSystemCommand)
      @alfred_version = nil
    rescue StandardError => e
    end
    return @alfred_version if @alfred_version
    v = alfred_primary_preference('version')
    @alfred_version = begin
      Gem::Version.new(v).to_s.to_f
    rescue StandardError => e
      0
    end
  end

  def self.alfred_2_installed?
    alfred_version >= 2.0
  end

  def self.alfred_localprefs?
    alfred_version >= 2.4
  end

  def self.linked?
    alfred_scopes.include?(Cask.caskroom.to_s)
  end

  # output looks like this:
  # (
  #   "/some/path",
  #   "/other/path"
  # )
  #
  # and we would like %w[/some/path /other/path]
  SCOPE_REGEXP = /^\s*"(.*)",?$/

  def self.alfred_scopes
    scopes = alfred_preference(PRIMARY_SCOPES_KEY).split("\n").map do |line|
      $1 if line.match(SCOPE_REGEXP)
    end.compact

    scopes.empty? ? DEFAULT_SCOPES : scopes
  end

  def self.localprefs_scopes_files
    # local prefs file is used in Alfred 2.4 and above for Yosemite compatibility
    prefs_path = alfred_primary_preference(LOCALPREFS_SYNCDIR_KEY).strip
    Pathname.glob(Pathname.new(prefs_path + LOCALPREFS_SUBPATH).expand_path)
  end

  def self.alfred_preference(key, value=nil)
    if alfred_localprefs? and key == PRIMARY_SCOPES_KEY
      alfred_file_preference(localprefs_scopes_files, LOCALPREFS_SCOPES_KEY, value)
    else
      alfred_primary_preference(key, value)
    end
  end

  def self.alfred_primary_preference(key, value=nil)
    if value
      odebug 'Writing Alfred primary preferences'
      @system_command.run('/usr/bin/defaults', :args => ['write', PRIMARY_DOMAIN, key, value.to_s])
    else
      odebug 'Reading Alfred primary preferences'
      @system_command.run('/usr/bin/defaults', :args => ['read', PRIMARY_DOMAIN, key]).stdout
    end
  end

  def self.alfred_file_preference(files, key, value=nil)
    unless files and files.length > 0
      raise CaskError.new "Required 'files' argument empty"
    end
    Array(files).map do |file|
      if value
        odebug 'Writing Alfred local preferences'
        @system_command.run('/usr/bin/defaults', :args => ['write', file, key, value.to_s])
      else
        odebug 'Reading Alfred local preferences'
        @system_command.run('/usr/bin/defaults', :args => ['read', file, key]).stdout
      end
    # hack/limitation: if there happen to be multiple local preference
    # files, we only return the value from the first one.
    end.first
  end

  def self.usage
    ohai 'brew cask alfred', <<-ALFREDHELP.undent
      manages integration with Alfred; allows applications installed via
      homebrew-cask to be launched by Alfred, by adding the Caskroom
      directory to Alfred's search paths

      subcommands:
        status - reports whether Alfred is linked
        link   - adds Caskroom to alfred search paths
        unlink - removes Caskroom from Alfred search paths
    ALFREDHELP
  end
end
