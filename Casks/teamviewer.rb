cask 'teamviewer' do
  version '15.0.24'
  sha256 '575a77233a76f848bde16d36183f3301cfe148c05c70a3cd946d29d71c9476c1'

  url 'https://download.teamviewer.com/download/TeamViewer.dmg'
  appcast 'https://download.teamviewer.com/download/update/macupdates.xml?id=0&lang=en&version=14.7.1965&os=macos&osversion=10.15.1&type=1&channel=1'
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
