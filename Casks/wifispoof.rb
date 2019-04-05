cask 'wifispoof' do
  version '3.4.3'
  sha256 '31465240307e6e2f36f9345c0600489e3458d81922f3a4ded66fe9881503f606'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
