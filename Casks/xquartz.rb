cask 'xquartz' do
  version '2.7.8'
  sha256 '17a4c2da1ab3b676fdf80d1a0714c6bfd22183a604e823b4fd8329fdb4432c2a'

  # bintray.com/xquartz was verified as official when first introduced to the cask
  url "https://dl.bintray.com/xquartz/legacy-downloads/SL/XQuartz-#{version}.dmg"
  appcast 'https://xquartz-dl.macosforge.org/sparkle/release.xml',
          checkpoint: 'b0acd11079391e97a302227b526f39a60050b7ccd79f59e232ff6079737f889c'
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
