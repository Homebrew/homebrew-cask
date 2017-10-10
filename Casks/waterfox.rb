cask 'waterfox' do
  version '55.2.1'
  sha256 'dd2e5d84c9134a5c1298616fa4c756c1ebe48aa212ee839eb442987bae498ae4'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl',
                '~/Library/Caches/Waterfox',
              ],
      trash:  [
                '~/Library/Application Support/Waterfox',
                '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
              ]
end
