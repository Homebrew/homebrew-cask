cask 'texmaker' do
  version '5.0'
  sha256 '9e8705cee04ff515c2daaf4b26b9bd918cf666836ec25a370456e35d2b0cc829'

  url "http://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  appcast 'http://www.xm1math.net/texmaker/log.html',
          checkpoint: '0f05e543d531d818b60f8285b06fe94409a216c8996bc4e7873ecc29f1a3a47b'
  name 'Texmaker'
  homepage 'http://www.xm1math.net/texmaker/'

  app 'texmaker.app'
end
