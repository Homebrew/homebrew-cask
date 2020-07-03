cask 'waterfox-current' do
  version '2020.07,6820.6.30'
  sha256 '7262baa3c17208c720eaeca872388f7a2df3530acc2869228c32bbb208218afc'

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
