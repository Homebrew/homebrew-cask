cask 'waterfox' do
  version '56.2.7.1'
  sha256 '72295f460e24c8c02b0a3aa721dbead8e7c4b271299d4deef35fc3a9b854245d'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  appcast 'https://www.waterfoxproject.org/en-US/waterfox/new/'
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/en-US/'

  app 'Waterfox.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*',
               '~/Library/Application Support/Waterfox',
               '~/Library/Caches/Waterfox',
               '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
             ]
end
