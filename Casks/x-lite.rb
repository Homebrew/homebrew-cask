cask 'x-lite' do
  version '5.0.1_86896'
  sha256 '4fc4256add2933676515d67df5b0d0ccbbb464e418c591d209f326d4837ecaee'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
