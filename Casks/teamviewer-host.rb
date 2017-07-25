cask 'teamviewer-host' do
  version '12.0.80984'
  sha256 '93fbde09b14cfac13f4f3fd3e7c02bdd3712b6a5c598c00c7a40b8c981938024'

  url "https://download.teamviewer.com/download/version_#{version.major}x/TeamViewerHost.dmg"
  name 'TeamViewer Host'
  homepage 'https://www.teamviewer.com/'

  auto_updates true

  pkg 'Install TeamViewerHost.pkg'

  uninstall pkgutil: 'com.teamviewer.teamviewerhost.*',
            delete:  [
                       '/Applications/TeamViewerHost.app',
                       "/Library/Fonts/TeamViewer#{version.major}Host.otf",
                       '~/Library/Application Support/TeamViewer Host',
                       '~/Library/Caches/com.teamviewer.TeamViewerHost',
                       '~/Library/Preferences/com.teamviewer.TeamViewerHost.plist',
                     ]

  zap       delete: [
                      '/Library/LaunchAgents/com.teamviewer.teamviewer_desktop.plist',
                      '/Library/LaunchAgents/com.teamviewer.teamviewer.plist',
                      '/Library/LaunchDaemons/com.teamviewer.Helper.plist',
                      '/Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist',
                      '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                      '/Library/PrivilegedHelperTools/com.teamviewer.Helper',
                      '/Library/Security/SecurityAgentPlugins/TeamViewerAuthPlugin.bundle',
                      '~/Library/Logs/TeamViewer',
                      '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
                    ]

  caveats   'Performing a zap on this cask removes files pertaining to both teamviewer and teamviewer-host, so it should not be done if you only want to uninstall one of them.'
end
