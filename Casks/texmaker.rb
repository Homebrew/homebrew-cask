cask 'texmaker' do
  version '5.0.1'
  sha256 '6ad92da13d2c895621ee6a82f5d6afb0dd4a12d65add2934d85a602175638535'

  url "http://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  appcast 'http://www.xm1math.net/texmaker/log.html',
          checkpoint: '1ae50704060807cbf2460153b2f750c88b2ce70eb79fd17a46b4048d0e4ba2bc'
  name 'Texmaker'
  homepage 'http://www.xm1math.net/texmaker/'

  app 'texmaker.app'
end
