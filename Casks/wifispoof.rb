cask 'wifispoof' do
  version '3.0.6'
  sha256 'a384c8ff6754252fe1b4ff008ee161f260ee9d819b9f1df12c47e884d79d7e9f'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast 'https://sweetpproductions.com/products/wifispoof3/appcast.xml',
          checkpoint: '6b566d4e65e3254a51a32577dd7e51b111a65b4eb45fec2686ba926b1ab930fd'
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
