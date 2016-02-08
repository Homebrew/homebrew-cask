cask 'transmission' do
  version '2.84'
  sha256 '53d08a55a5ca55010d409acb10f0285a649b8879085cad83f2cbcb7faa489ad5'

  # cachefly.net is the official download host per the vendor homepage
  url "https://transmission.cachefly.net/Transmission-#{version}.dmg"
  appcast 'https://update.transmissionbt.com/appcast.xml',
          checkpoint: '430a5151b1e38fd2d6f544c8877b2cdd4deda6dc4b3cc6a6620550de4a8fdfec'
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
