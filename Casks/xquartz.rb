class Xquartz < Cask
  version '2.7.7'
  sha256 'c9b3a373b7fd989331117acb9696fffd6b9ee1a08ba838b02ed751b184005211'

  url 'https://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.7.dmg'
  appcast 'http://xquartz-dl.macosforge.org/sparkle/release.xml'
  homepage 'http://xquartz.macosforge.org/'

  pkg 'XQuartz.pkg'

  postflight do
    Pathname.new(File.expand_path('~')).join('Library', 'Logs').mkpath

    # Set default path to X11 = avoid the need of manual setup
    system '/usr/bin/defaults', 'write', 'com.apple.applescript', 'ApplicationMap', '-dict-add', 'X11', 'file://localhost/Applications/Utilities/XQuartz.app/'

    # Load & start XServer = avoid the need of relogin
    system '/bin/launchctl', 'load', '/Library/LaunchAgents/org.macosforge.xquartz.startx.plist'
  end

  uninstall :quit => 'org.macosforge.xquartz.X11',
            :launchctl => 'org.macosforge.xquartz.startx',
            :pkgutil => 'org.macosforge.xquartz.pkg',
            :files => '/opt/X11/'
end
