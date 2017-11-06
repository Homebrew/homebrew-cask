cask 'teamviewer' do
  version '13'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.teamviewer.com/download/version_#{version}x/TeamViewer.dmg"
  name 'TeamViewer'
  homepage 'https://www.teamviewer.com/'

  auto_updates true
  conflicts_with cask: 'teamviewer-host'

  pkg 'Install TeamViewer.pkg'

  uninstall pkgutil:   'com.teamviewer.*',
            delete:    [
                         '/Applications/TeamViewer.app',
                         "/Library/Fonts/TeamViewer#{version}.otf",
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
            quit:      'com.teamviewer.TeamViewer'

  zap       delete: [
                      '~/Library/Caches/com.teamviewer.TeamViewer',
                      '~/Library/Cookies/com.teamviewer.TeamViewer.binarycookies',
                      '~/Library/Logs/TeamViewer',
                      '~/Library/Saved Application State/com.teamviewer.TeamViewer.savedState',
                    ],
            trash:  [
                      '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                      '~/Library/Application Support/TeamViewer',
                      '~/Library/Preferences/com.teamviewer.TeamViewer.plist',
                      '~/Library/Preferences/com.teamviewer.teamviewer.preferences.Machine.plist',
                      '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                    ]
end
