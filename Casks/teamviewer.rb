cask 'teamviewer' do
  version '13'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.teamviewer.com/download/version_#{version}x/TeamViewer.dmg"
  name 'TeamViewer'
  homepage 'https://www.teamviewer.com/'

  auto_updates true
  conflicts_with cask: 'teamviewer-host'

  pkg 'Install TeamViewer.pkg'

  uninstall delete: "#{staged_path}/#{token}" # This Cask should be uninstalled manually.

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
