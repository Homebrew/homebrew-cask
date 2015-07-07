cask :v1 => 'transmission' do
  version '2.84'
  sha256 '53d08a55a5ca55010d409acb10f0285a649b8879085cad83f2cbcb7faa489ad5'

  # cachefly.net is the official download host per the vendor homepage
  url "https://transmission.cachefly.net/Transmission-#{version}.dmg"
  name 'Transmission'
  appcast 'https://update.transmissionbt.com/appcast.xml',
          :sha256 => 'f7177b7ad0bc07a74b484e0033dbf356e112cd1225c8050657b1e21aeaf7bdd3'
  homepage 'http://www.transmissionbt.com/'
  license :gpl

  app 'Transmission.app'

  zap :delete => [
                  '~/Library/Application Support/Transmission',
                  '~/Library/Preferences/org.m0k.transmission.plist',
                  '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
                  '~/Library/Caches/org.m0k.transmission',
                 ]
end
