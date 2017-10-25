cask 'x-lite' do
  version '5.0.3_88253'
  sha256 '1204b60f122d5260e6cb53a7bec58fc85df60336f925506ec49791bbf128a0b3'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
