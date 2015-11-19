cask :v1 => 'x-lite' do
  version '4.9.0_78102'
  sha256 'a92c4d2f15f4969a5204ca470f55c0e174a2c759d716ff14ec5b952a0d90bbcf'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'
  license :commercial

  app 'X-Lite.app'
end
