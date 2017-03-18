cask 'teamviewer' do
  version '12.0.72647'
  sha256 '1dc2dda560dc8a70b6478e7e88b1c64d9b0f6a8db24c8d165c2b2e14e2de55ee'

  url "https://download.teamviewer.com/download/version_#{version.major}x/TeamViewer.dmg"
  name 'TeamViewer'
  homepage 'https://www.teamviewer.com/'

  auto_updates true

  pkg 'Install TeamViewer.pkg'

  uninstall pkgutil:   'com.teamviewer.*',
            launchctl: 'com.teamviewer.*',
            delete:    [
                         '/Applications/TeamViewer.app',
                         "/Library/Fonts/TeamViewer#{version.major}.otf",
                         '/Library/LaunchAgents/com.teamviewer.teamviewer.plist',
                         '/Library/LaunchAgents/com.teamviewer.teamviewer_desktop.plist',
                         '/Library/LaunchDaemons/com.teamviewer.Helper.plist',
                         '/Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist',
                         '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                         '/Library/PrivilegedHelperTools/com.teamviewer.Helper',
                         '/Library/Security/SecurityAgentPlugins/TeamViewerAuthPlugin.bundle',
                       ]

  zap       delete: [
                      '~/Library/Application Support/TeamViewer',
                      '~/Library/Caches/com.teamviewer.TeamViewer',
                      '~/Library/Logs/TeamViewer',
                      '~/Library/Preferences/com.teamviewer.TeamViewer.plist',
                      '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                      '~/Library/Saved Application State/com.teamviewer.TeamViewer.savedState',
                      '~/Library/Cookies/com.teamviewer.TeamViewer.binarycookies',
                    ]
end
