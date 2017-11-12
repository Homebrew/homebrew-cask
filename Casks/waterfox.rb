cask 'waterfox' do
  version '55.2.2'
  sha256 '58278907504c8c08adb8e11e7a855b0b43d244af6cc2d180ef1ad152f3f56c32'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*',
                '~/Library/Caches/Waterfox',
              ],
      trash:  [
                '~/Library/Application Support/Waterfox',
                '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
              ]
end
