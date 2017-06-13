cask 'wifispoof' do
  version '3.0.4'
  sha256 'cdcf7a8908de5c092349cea9fc9f4d608406a638e190792665fed0d0a810c720'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast 'https://sweetpproductions.com/products/wifispoof3/appcast.xml',
          checkpoint: '0cf1f17460ff75966efb3e067048a21e18c75d19befc51fc0543a7746fd40b82'
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
