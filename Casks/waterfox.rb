cask 'waterfox' do
  version '56.2.11'
  sha256 'a0885e8963ad299285832974e2b0112e2acc51b503377a212ecf980a28f2d228'

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
