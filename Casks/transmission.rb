cask 'transmission' do
  version '2.90'
  sha256 '29a27fa1905c7a52d76f1ce96ae45a736786cd0230e0bd9413508bcf52af7794'

  # cachefly.net is the official download host per the vendor homepage
  url "https://transmission.cachefly.net/Transmission-#{version}.dmg"
  appcast 'https://update.transmissionbt.com/appcast.xml',
          checkpoint: 'bb7200054491881444262022b8c6fee1786ccac4d2bcaabd52ac0d066d7020c4'
  name 'Transmission'
  homepage 'http://www.transmissionbt.com/'
  license :gpl

  auto_updates true

  app 'Transmission.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl',
                '~/Library/Application Support/Transmission',
                '~/Library/Preferences/org.m0k.transmission.plist',
                '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
                '~/Library/Caches/org.m0k.transmission',
              ]
end
