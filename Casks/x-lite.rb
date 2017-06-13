cask 'x-lite' do
  version '4.9.8_84254'
  sha256 '7a33cf0ea6f30e1373a71002dcd1102bc56b4e5a665f50ede00219bb9788f154'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
