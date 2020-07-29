cask 'waterfox-current' do
  version '2020.06,6820.6.2'
  sha256 '945e3a87cfd1eb194ee5fd5dcb751ba16dc7eb6c1ffbf9637c7c28d2c4e2729f'

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Current%20#{version.before_comma}%20Setup.dmg"
  appcast 'https://www.waterfox.net/download/'
  name 'Waterfox Current'
  homepage 'https://www.waterfox.net/'

  app 'Waterfox Current.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*',
               '~/Library/Application Support/Waterfox',
               '~/Library/Caches/Waterfox',
               '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
             ]
end
