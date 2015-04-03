cask :v1 => 'webstorm' do
  version '10.0.1'
  sha256 '9c95e54ca07c94e07cd23089eb079a97f8dba128666597ab82ad05628fa19681'

  url "http://download-cf.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  name 'WebStorm'
  homepage 'http://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
