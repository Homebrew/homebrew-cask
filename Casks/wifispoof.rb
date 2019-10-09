cask 'wifispoof' do
  version '3.4.5'
  sha256 'a26768bdb0f1c644d75be260cf5797e5cf9752d65fc2a17b2e56fe178bdb8ddc'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
