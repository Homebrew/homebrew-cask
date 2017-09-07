cask 'wifispoof' do
  version '3.0.4.1'
  sha256 'ae6ad4e57b1e2f991cd90a25773b6bda83230a5267e6b1eefdb163bcaec60ab9'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast 'https://sweetpproductions.com/products/wifispoof3/appcast.xml',
          checkpoint: 'eff33d438f8aa5b91576f8b6891f44e923a833806a4a32d4ce16f988d2e811ae'
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
