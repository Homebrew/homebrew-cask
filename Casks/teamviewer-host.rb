cask 'teamviewer-host' do
  version '12.0.75813'
  sha256 '2f650b129d283bd1bfd104d2ac6cb31eb4966b704bb98a776f6d175cf83da1d7'

  url "https://download.teamviewer.com/download/version_#{version.major}x/TeamViewerHost.dmg"
  name 'TeamViewer Host'
  homepage 'https://www.teamviewer.com/'

  auto_updates true

  pkg 'Install TeamViewerHost.pkg'

  uninstall pkgutil:   'com.teamviewer.*',
            launchctl: 'com.teamviewer.*',
            delete:    [
                         '/Applications/TeamViewerHost.app',
                         "/Library/Fonts/TeamViewer#{version.major}Host.otf",
                         '/Library/LaunchAgents/com.teamviewer.teamviewer.plist',
                         '/Library/LaunchAgents/com.teamviewer.teamviewer_desktop.plist',
                         '/Library/LaunchDaemons/com.teamviewer.Helper.plist',
                         '/Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist',
                         '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                         '/Library/PrivilegedHelperTools/com.teamviewer.Helper',
                         '/Library/Security/SecurityAgentPlugins/TeamViewerAuthPlugin.bundle',
                       ]

  zap       delete: [
                      '~/Library/Application Support/TeamViewer Host',
                      '~/Library/Caches/com.teamviewer.TeamViewerHost',
                      '~/Library/Logs/TeamViewer',
                      '~/Library/Preferences/com.teamviewer.TeamViewerHost.plist',
                      '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                    ]
end
