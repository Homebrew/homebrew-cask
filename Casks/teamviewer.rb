cask 'teamviewer' do
  version '11.0.59131'
  sha256 'dd657763ad41f07c2ce8b1905b3a19833ead896ee84a67d8d5be7520664081f8'

  url 'https://download.teamviewer.com/download/TeamViewer.dmg'
  name 'TeamViewer'
  homepage 'https://www.teamviewer.com/'
  license :freemium

  pkg 'Install TeamViewer.pkg'

  uninstall pkgutil:   'com.teamviewer.*',
            launchctl: 'com.teamviewer.service',
            delete:    [
                         '/Applications/TeamViewer.app',
                         '/Library/LaunchAgents/com.teamviewer.teamviewer_desktop.plist',
                         '/Library/LaunchAgents/com.teamviewer.teamviewer.plist',
                         '/Library/LaunchDaemons/com.teamviewer.Helper.plist',
                         '/Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist',
                       ]

  zap       delete: [
                      '~/Library/Caches/com.teamviewer.TeamViewer',
                      '~/Library/Logs/TeamViewer',
                    ]
end
