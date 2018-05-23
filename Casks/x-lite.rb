cask 'x-lite' do
  version '5.2.0_90533'
  sha256 'd384e91a57881558950832b1918228596a3d3acb52ed5814acf91e732d851d6b'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
