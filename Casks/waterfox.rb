cask 'waterfox' do
  version '2020.01.1'
  sha256 'efb8402184d10f90824a4e6d2e7b213581be13415d17bb49f1df2f6bb816e3b7'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20Classic%20#{version}%20Setup.dmg"
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
