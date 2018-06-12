cask 'texmaker' do
  version '5.0.2'
  sha256 'c23a912f7fc47d2dd28590d3a704f8e3df55a68f2ab21267a16b294d59fe9657'

  url "http://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  appcast 'http://www.xm1math.net/texmaker/log.html'
  name 'Texmaker'
  homepage 'http://www.xm1math.net/texmaker/'

  app 'texmaker.app'
end
