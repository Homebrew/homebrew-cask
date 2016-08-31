cask 'transmission' do
  version '2.92'
  sha256 '926a878cac007e591cfcea987048abc0689d77e7729a28255b9ea7b73f22d693'

  # github.com/transmission/transmission/releases/download/ was verified as official

  url "https://github.com/transmission/transmission/releases/download/#{version}/transmission-#{version}.dmg"
  appcast 'https://transmissionbt.com/appcast.xml',
          checkpoint: '78fb3a9cfd536d80d5a9a64da89e2e7e6281c18b8787b565450e501098bef83b'
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
