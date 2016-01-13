cask 'xquartz' do
  version '2.7.8'
  sha256 '17a4c2da1ab3b676fdf80d1a0714c6bfd22183a604e823b4fd8329fdb4432c2a'

  # macosforge.org is the official download host per the vendor homepage
  url "https://xquartz.macosforge.org/downloads/SL/XQuartz-#{version}.dmg"
  appcast 'https://xquartz-dl.macosforge.org/sparkle/release.xml',
          :sha256 => '0bbfb27ff8686b3ce35e40a9f6d307e1568bda2db48e6a2a840d4e8d29f5f768'
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

  uninstall :quit      => 'org.macosforge.xquartz.X11',
            :launchctl => 'org.macosforge.xquartz.startx',
            :pkgutil   => 'org.macosforge.xquartz.pkg',
            :delete    => '/opt/X11/'

  zap       :delete => [
                         '~/Library/Caches/org.macosforge.xquartz.X11',
                         '~/Library/Logs/X11',
                         '~/Library/Logs/X11.org.macosforge.xquartz.log',
                         '~/Library/Logs/X11.org.macosforge.xquartz.log.old',
                         '~/Library/Preferences/org.macosforge.xquartz.X11.plist',
                         '~/Library/Saved Application State/org.macosforge.xquartz.X11.savedState',
                         '~/.Xauthority',
                       ],
            :rmdir  => '~/.fonts'
end
