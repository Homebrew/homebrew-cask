cask 'teamviewer' do
  version '12'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.teamviewer.com/download/version_#{version}x/TeamViewer.dmg"
  name 'TeamViewer'
  homepage 'https://www.teamviewer.com/'

  auto_updates true

  pkg 'Install TeamViewer.pkg'

  uninstall pkgutil: "com.teamviewer.teamviewer#{version}(?!AuthPlugin|PriviledgedHelper).*",
            delete:  [
                       '/Applications/TeamViewer.app',
                       "/Library/Fonts/TeamViewer#{version}.otf",
                     ]

  zap       delete: [
                      '/Library/LaunchAgents/com.teamviewer.teamviewer_desktop.plist',
                      '/Library/LaunchAgents/com.teamviewer.teamviewer.plist',
                      '/Library/LaunchDaemons/com.teamviewer.Helper.plist',
                      '/Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist',
                      '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                      '/Library/PrivilegedHelperTools/com.teamviewer.Helper',
                      '/Library/Security/SecurityAgentPlugins/TeamViewerAuthPlugin.bundle',
                      '~/Library/Application Support/TeamViewer',
                      '~/Library/Caches/com.teamviewer.TeamViewer',
                      '~/Library/Cookies/com.teamviewer.TeamViewer.binarycookies',
                      '~/Library/Logs/TeamViewer',
                      '~/Library/Preferences/com.teamviewer.TeamViewer.plist',
                      '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                      '~/Library/Saved Application State/com.teamviewer.TeamViewer.savedState',
                    ]

  caveats   'Performing a zap on this cask removes files pertaining to both teamviewer and teamviewer-host, so it should not be done if you only want to uninstall one of them.'
end
