cask 'texmaker' do
  version '5.0.1'
  sha256 'a8e17a3d9c46b97184e939add09b856f4afcfe5f6941c5ccd7a7656ccc583585'

  url "http://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  appcast 'http://www.xm1math.net/texmaker/log.html',
          checkpoint: '1ae50704060807cbf2460153b2f750c88b2ce70eb79fd17a46b4048d0e4ba2bc'
  name 'Texmaker'
  homepage 'http://www.xm1math.net/texmaker/'

  app 'texmaker.app'
end
