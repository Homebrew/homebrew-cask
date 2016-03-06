cask 'transmission' do
  version '2.91'
  sha256 '8d0c36540406022a47e9b9bc64190f9e852b2b6f45fe4c0d2853ac2c604b062b'

  url "http://download.transmissionbt.com/files/Transmission-#{version}.dmg"
  appcast 'https://update.transmissionbt.com/appcast.xml',
          checkpoint: '30717111f950e563702a12fe28cfe37b35fc5a9648e13ccb84389d5615f372e1'
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
