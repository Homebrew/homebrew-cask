cask 'teamviewer' do
  version '13'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.teamviewer.com/download/version_#{version}x/TeamViewer.dmg"
  name 'TeamViewer'
  homepage 'https://www.teamviewer.com/'

  auto_updates true
  conflicts_with cask: 'teamviewer-host'

  pkg 'Install TeamViewer.pkg'

  # This pkg and file should not be added to uninstall or zap
  # https://github.com/caskroom/homebrew-cask/pull/45718
  # `pkg` com.teamviewer.teamviewer13AuthPlugin
  # /Library/Security/SecurityAgentPlugins/TeamViewerAuthPlugin.bundle
  uninstall pkgutil:   [
                         "com.teamviewer.teamviewer#{version}Restarter",
                         "com.teamviewer.teamviewer#{version}Agent",
                         "com.teamviewer.teamviewer#{version}Font",
                         "com.teamviewer.teamviewer#{version}",
                         "com.teamviewer.teamviewer#{version}PriviledgedHelper",
                       ],
            delete:    [
                         '/Applications/TeamViewer.app',
                         "/Library/Fonts/TeamViewer#{version}.otf",
                         '/Library/PrivilegedHelperTools/com.teamviewer.Helper',
                       ],
            launchctl: [
                         'com.teamviewer.Helper',
                         'com.teamviewer.desktop',
                         'com.teamviewer.service',
                         'com.teamviewer.teamviewer',
                         'com.teamviewer.teamviewer_service',
                       ],
            quit:      'com.teamviewer.TeamViewer'

  zap trash: [
               '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Application Support/TeamViewer',
               '~/Library/Caches/com.teamviewer.TeamViewer',
               '~/Library/Cookies/com.teamviewer.TeamViewer.binarycookies',
               '~/Library/Logs/TeamViewer',
               '~/Library/Preferences/com.teamviewer.TeamViewer.plist',
               '~/Library/Preferences/com.teamviewer.teamviewer.preferences.Machine.plist',
               '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Saved Application State/com.teamviewer.TeamViewer.savedState',
             ]
end
