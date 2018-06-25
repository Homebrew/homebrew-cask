cask 'x-lite' do
  version '5.3.1_92385'
  sha256 'd7e965117f43e8ea831a7d65ea5e5ce742ee31565d12828500b1fd4488dbb68a'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
