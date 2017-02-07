cask 'wifispoof' do
  version '3.0.3'
  sha256 '395a7fb451f2d7e968ee87545623e846d7f682eaaba5b27fccf5fb4a2cc27092'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast 'https://sweetpproductions.com/products/wifispoof3/appcast.xml',
          checkpoint: 'dc0b638dce2b4c4386638e9065aba0d5d085c36b97c2bed65c12c7a040a188b1'
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
