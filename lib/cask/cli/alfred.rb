class Cask::CLI::Alfred
  DEFAULT_SCOPES = [
    '/Applications',
    '/Applications/Xcode.app/Contents/Applications',
    '/Developer/Applications',
    '/Library/PreferencePanes',
    '/System/Library/PreferencePanes',
    '~/Library/Caches/Metadata/',
    '~/Library/Mobile Documents/',
    '~/Library/PreferencePanes'
  ]
  DOMAIN = "com.runningwithcrayons.Alfred-Preferences"
  KEY = "features.defaultresults.scope"

  def self.run(*args)
    subcommand = args.first

    if args.length > 1 && args.last.is_a?(Class)
      @system_command = args.last
    else
      @system_command = Cask::SystemCommand
    end

    case subcommand
    when "link" then link
    when "unlink" then unlink
    when "status" then status
    else
      usage
    end
  end

  def self.help
    "used to modify Alfred's scope to include the Caskroom"
  end

  def self.assert_installed
    if !alfred_installed?
      opoo "Could not find Alfred 2 preferences, Alfred 2 is probably not installed."
    end
    alfred_installed?
  end

  def self.link
    return unless assert_installed

    if linked?
      opoo "Alfred is already linked to homebrew-cask."
    else
      odebug 'Linking Alfred scopes'
      save_alfred_scopes(alfred_scopes << Cask.caskroom)
      ohai "Successfully linked Alfred to homebrew-cask."
    end
  end

  def self.unlink
    return unless assert_installed

    if !linked?
      opoo "Alfred is already unlinked from homebrew-cask."
    else
      odebug 'Unlinking Alfred scopes'
      save_alfred_scopes(alfred_scopes.reject { |x| x == Cask.caskroom.to_s })
      ohai "Successfully unlinked Alfred from homebrew-cask."
    end
  end

  def self.status
    return unless assert_installed

    if linked?
      ohai "Alfred is happily linked to homebrew-cask!"
    else
      ohai "Alfred is not linked to homebrew-cask."
    end
  end

  def self.save_alfred_scopes(scopes)
    alfred_preference(KEY, "(#{scopes.map { |s| "'#{s}'" }.join(",")})")
  end

  def self.alfred_installed?
    alfred_preference('version') =~ /^2\.[0-9]/
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
    scopes = alfred_preference(KEY).split("\n").map do |line|
      matchdata = line.match(SCOPE_REGEXP)
      matchdata ? matchdata.captures.first : nil
    end.compact

    scopes.empty? ? DEFAULT_SCOPES : scopes
  end

  def self.alfred_preference(key, value=nil)
    if value
      odebug 'Writing Alfred preferences'
      @system_command.run('/usr/bin/defaults', :args => ['write', DOMAIN, key, %Q("#{value}")])
    else
      odebug 'Reading Alfred preferences'
      @system_command.run('/usr/bin/defaults', :args => ['read', DOMAIN, key])
    end
  end

  def self.usage
    ohai 'brew cask alfred', <<-ALFREDHELP.undent
      manages integration with Alfred; allows applications installed with
      homebrew cask to be launched by Alfred by adding the Caskroom to Alfreds
      search paths

      subcommands:
        status - reports whether Alfred is linked
        link   - adds Caskroom to alfred search paths
        unlink - removes Caskroom from Alfred search paths
    ALFREDHELP
  end
end
