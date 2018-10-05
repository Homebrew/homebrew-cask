cask 'wifispoof' do
  version '3.4.1'
  sha256 '8c9d157877ecb397ef10d660b2fbf548efd3bd23bfe5ee3b43fc2ee86cdc176b'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
