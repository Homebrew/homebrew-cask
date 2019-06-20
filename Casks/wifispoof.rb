cask 'wifispoof' do
  version '3.4.4'
  sha256 '36b9a36fcb9010e28bf42b4c32f04ae8cbe72f616cd8ae978a5ab3494c5fc260'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
