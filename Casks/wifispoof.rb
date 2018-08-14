cask 'wifispoof' do
  version '3.2'
  sha256 'e294a63799e21d607a4c10a6512e363dceb379dfc20d9786f6d7d93ce0e8b33f'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
