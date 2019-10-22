cask 'teamviewer' do
  version '14'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.teamviewer.com/download/version_#{version}x/TeamViewer.dmg"
  appcast 'https://download.teamviewer.com/download/update/macupdates.xml?id=0&lang=en&version=13.1.4170&os=macos&osversion=10.14.1&type=0'
  name 'TeamViewer'
  homepage 'https://www.teamviewer.com/'

  auto_updates true
  conflicts_with cask: 'teamviewer-host'

  pkg 'Install TeamViewer.pkg'

  uninstall delete:    [
                         "#{staged_path}/#{token}", # This Cask should be uninstalled manually.
                         '/Applications/TeamViewer.app',
                       ],
            pkgutil:   'com.teamviewer.teamviewer.*',
            launchctl: [
                         'com.teamviewer.desktop',
                         'com.teamviewer.service',
                         'com.teamviewer.Helper',
                         'com.teamviewer.teamviewer',
                         'com.teamviewer.teamviewer_desktop',
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
