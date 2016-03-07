cask 'x-lite' do
  version '4.9.2_79049'
  sha256 'd0fedd71c37d7a6a12b7d63bbb9b2495f58ec45270e31cb5ea60bdf8947b7bc6'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'
  license :commercial

  app 'X-Lite.app'
end
