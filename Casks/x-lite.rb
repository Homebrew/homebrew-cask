cask 'x-lite' do
  version '5.1.0_89320'
  sha256 '33ec321d198c44b7d5b764d6eab8a55fdb3131462b4310d2b508f3063da0f9d3'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
