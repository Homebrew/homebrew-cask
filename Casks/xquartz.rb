cask :v1 => 'xquartz' do
  version '2.7.8'
  sha256 '17a4c2da1ab3b676fdf80d1a0714c6bfd22183a604e823b4fd8329fdb4432c2a'

  # macosforge.org is the official download host per the vendor homepage
  url "https://xquartz.macosforge.org/downloads/SL/XQuartz-#{version}.dmg"
  appcast 'https://xquartz-dl.macosforge.org/sparkle/release.xml',
          :sha256 => '0b2c7d4e0b101eefc0a3efb000b779b3ec7246fcb5d14a0540e85f540f26a9e6'
  name 'XQuartz'
  homepage 'http://www.xquartz.org/'
  license :oss

  pkg 'XQuartz.pkg'

  postflight do
    Pathname.new(File.expand_path('~')).join('Library', 'Logs').mkpath

    # Set default path to X11 to avoid the need of manual setup
    system '/usr/bin/defaults', 'write', 'com.apple.applescript', 'ApplicationMap', '-dict-add', 'X11', 'file://localhost/Applications/Utilities/XQuartz.app/'

    # Load & start XServer to avoid the need of relogin
    system '/bin/launchctl', 'load', '/Library/LaunchAgents/org.macosforge.xquartz.startx.plist'
  end

  uninstall :quit => 'org.macosforge.xquartz.X11',
            :launchctl => 'org.macosforge.xquartz.startx',
            :pkgutil => 'org.macosforge.xquartz.pkg',
            :delete => '/opt/X11/'
  zap       :delete => [
                        '~/Library/Caches/org.macosforge.xquartz.X11',
                        '~/Library/Logs/X11',
                        '~/Library/Logs/X11.org.macosforge.xquartz.log',
                        '~/Library/Logs/X11.org.macosforge.xquartz.log.old',
                        '~/Library/Preferences/org.macosforge.xquartz.X11.plist',
                        '~/Library/Saved Application State/org.macosforge.xquartz.X11.savedState',
                        '~/.Xauthority',
                       ],
            :rmdir => '~/.fonts'
end
