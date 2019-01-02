cask 'x-lite' do
  version '5.4.0_94385'
  sha256 '9a84965af675ac5ff3aa84002b8bf27b298b990c2bd36e4a13d938ec2f4503f7'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'https://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
