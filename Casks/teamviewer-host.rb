cask 'teamviewer-host' do
  version '14'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.teamviewer.com/download/version_#{version}x/TeamViewerHost.dmg"
  name 'TeamViewer Host'
  homepage 'https://www.teamviewer.com/'

  auto_updates true
  conflicts_with cask: 'teamviewer'

  pkg 'Install TeamViewerHost.pkg'

  uninstall delete: "#{staged_path}/#{token}" # This Cask should be uninstalled manually.

  zap trash: [
               '/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Application Support/TeamViewer Host',
               '~/Library/Caches/com.teamviewer.TeamViewerHost',
               '~/Library/Logs/TeamViewer',
               '~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist',
               '~/Library/Preferences/com.teamviewer.TeamViewerHost.plist',
             ]
end
