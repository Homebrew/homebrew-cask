cask 'waterfox' do
  version '56.2.8'
  sha256 '292e2d6b969798df94be27a1aa35b769fe7870b39d496dd97f0d4ce296065c8a'

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
