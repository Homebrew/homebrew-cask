cask 'texmaker' do
  version '5.0'
  sha256 '9e8705cee04ff515c2daaf4b26b9bd918cf666836ec25a370456e35d2b0cc829'

  url "http://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  name 'Texmaker'
  homepage 'http://www.xm1math.net/texmaker/'

  app 'texmaker.app'
end
