cask 'teamviewer' do
  version '12.0.75813'
  sha256 '5570875f99f2be0fdc167366c11e80056fa9e3d617e9b731e7821a81e2e1df45'

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
