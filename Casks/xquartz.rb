cask :v1 => 'xquartz' do
  version '2.7.7'
  sha256 'c9b3a373b7fd989331117acb9696fffd6b9ee1a08ba838b02ed751b184005211'

  url "https://xquartz.macosforge.org/downloads/SL/XQuartz-#{version}.dmg"
  appcast 'http://xquartz-dl.macosforge.org/sparkle/release.xml',
          :sha256 => '9792f0d6abd547e523f6ca33c4dd3847134bc3d46d77ac91b93fe932d6123568'
  homepage 'http://xquartz.macosforge.org/'
  license :unknown

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
                        '~/.Xauthority',
                       ],
            :rmdir => '~/.fonts'
end
