cask 'x-lite' do
  version '4.9.7.1_83369'
  sha256 '5440cfb882df118cfe8f3f934a03221cf963bb1b429e655002e36eda6c52f3c8'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
