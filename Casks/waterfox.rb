cask 'waterfox' do
  version '2019.12'
  sha256 'd23718a9919ffa8c39241e592086ccda4dac30f8304914d83706f0b8182585bf'

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
