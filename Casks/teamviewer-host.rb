cask 'teamviewer-host' do
  version :latest
  sha256 :no_check

  url 'https://download.teamviewer.com/download/TeamViewerHost.dmg'
  name 'TeamViewer Host'
  homepage 'https://www.teamviewer.com/'

  auto_updates true
  conflicts_with cask: 'teamviewer'

  pkg 'Install TeamViewerHost.pkg'

  uninstall pkgutil:   'com.teamviewer.*',
            delete:    [
                         '/Applications/TeamViewerHost.app',
                         '/Library/Fonts/TeamViewer*Host.otf',
                         '/Library/PrivilegedHelperTools/com.teamviewer.Helper',
                         '/Library/Security/SecurityAgentPlugins/TeamViewerAuthPlugin.bundle',
                       ],
            launchctl: [
                         'com.teamviewer.Helper',
                         'com.teamviewer.desktop',
                         'com.teamviewer.service',
                         'com.teamviewer.teamviewer',
                         'com.teamviewer.teamviewer_service',
                       ],
            quit:      'com.teamviewer.TeamViewerHost'

  zap trash: [
               '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Application Support/TeamViewer Host',
               '~/Library/Caches/com.teamviewer.TeamViewerHost',
               '~/Library/Logs/TeamViewer',
               '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Preferences/com.teamviewer.TeamViewerHost.plist',
             ]
end
