cask 'x-lite' do
  version '5.3.3_92984'
  sha256 '107fd6a6e9c727ba3d1d5a0126e5d2bb9e6631180a86fdbd13e41666b090a4b1'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'https://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
