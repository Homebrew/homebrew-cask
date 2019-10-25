cask 'waterfox' do
  version '2019.10'
  sha256 'ed30fba5843f041aec9cc5393f5049df05b5c8773423daf7c3806819cb505171'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20Classic%20#{version}%20Setup.dmg"
  appcast 'https://www.waterfox.net/releases/'
  name 'Waterfox'
  homepage 'https://www.waterfox.net/'

  app 'Waterfox Classic.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*',
               '~/Library/Application Support/Waterfox',
               '~/Library/Caches/Waterfox',
               '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
             ]
end
