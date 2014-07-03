class Xquartz < Cask
  version '2.7.6'
  sha256 '02aa3268af0bd7dcd5dfbc10d673f5c6834bba6371a928d2a3fc44a8039b194e'

  url 'https://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.6.dmg'
  appcast 'http://xquartz-dl.macosforge.org/sparkle/release.xml'
  homepage 'http://xquartz.macosforge.org/'

  install 'XQuartz.pkg'

  after_install do
    Pathname.new(Dir.home).join('Library', 'Logs').mkpath

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
