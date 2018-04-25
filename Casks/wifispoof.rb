cask 'wifispoof' do
  version '3.1.1'
  sha256 'a2c297bd409f867364588d9e01ae74d96f2029d468237e96ca8cc8c045d72d1b'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml",
          checkpoint: '345ce939e4759b27ddef38c60ff41bc5d97513d2ae6c79d709a97ce0963aa9ba'
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
