cask 'xquartz' do
  version '2.7.9'
  sha256 'f1a8c055e37f6c508ec471dd94d0aadc0fc69601cbbc97abe78abbb2dbee2f5c'

  # bintray.com/xquartz was verified as official when first introduced to the cask
  url "https://dl.bintray.com/xquartz/downloads/XQuartz-#{version}.dmg"
  appcast 'https://www.xquartz.org/releases/sparkle/release.xml',
          checkpoint: '74e4ffc811e99d388086551e256abc9259b9200d23a90eb380811516ae6f501a'
  name 'XQuartz'
  homepage 'https://www.xquartz.org/'
  license :oss

  pkg 'XQuartz.pkg'

  postflight do
    Pathname.new(File.expand_path('~')).join('Library', 'Logs').mkpath

    # Set default path to X11 to avoid the need of manual setup
    system '/usr/bin/defaults', 'write', 'com.apple.applescript', 'ApplicationMap', '-dict-add', 'X11', 'file://localhost/Applications/Utilities/XQuartz.app/'

    # Load & start XServer to avoid the need of relogin
    system '/bin/launchctl', 'load', '/Library/LaunchAgents/org.macosforge.xquartz.startx.plist'
  end

  uninstall quit:      'org.macosforge.xquartz.X11',
            launchctl: 'org.macosforge.xquartz.startx',
            pkgutil:   'org.macosforge.xquartz.pkg',
            delete:    '/opt/X11/'

  zap       delete: [
                      '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.macosforge.xquartz.x11.sfl',
                      '~/Library/Caches/org.macosforge.xquartz.X11',
                      '~/Library/Logs/X11',
                      '~/Library/Logs/X11.org.macosforge.xquartz.log',
                      '~/Library/Logs/X11.org.macosforge.xquartz.log.old',
                      '~/Library/Preferences/org.macosforge.xquartz.X11.plist',
                      '~/Library/Saved Application State/org.macosforge.xquartz.X11.savedState',
                      '~/.Xauthority',
                    ],
            rmdir:  '~/.fonts'
end
