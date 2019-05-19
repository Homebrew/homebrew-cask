cask 'waterfox' do
  version '56.2.10'
  sha256 '7c75729f186d4467d8c85aea12f0ae2142b295a5f3f51ae33c961c3ad6e35142'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  appcast 'https://www.waterfox.net/releases/'
  name 'Waterfox'
  homepage 'https://www.waterfox.net/'

  app 'Waterfox.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*',
               '~/Library/Application Support/Waterfox',
               '~/Library/Caches/Waterfox',
               '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
             ]
end
