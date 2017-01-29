cask 'x-lite' do
  version '4.9.6_82167'
  sha256 '7863636429154f1dd52ec5e9bd7be57f5c525ee7ac37118c8cf0dd111f2b2beb'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
