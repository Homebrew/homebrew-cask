cask 'transmission' do
  version '2.92'
  sha256 '926a878cac007e591cfcea987048abc0689d77e7729a28255b9ea7b73f22d693'

  url "https://download.transmissionbt.com/files/Transmission-#{version}.dmg"
  appcast 'https://update.transmissionbt.com/appcast.xml',
          checkpoint: '24dcf232666db1aed41dae45c6a4fa9e7f52b98c10e69207cdd48baf83e114ac'
  name 'Transmission'
  homepage 'https://www.transmissionbt.com/'
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
