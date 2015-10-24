cask :v1 => 'xee' do
  version '3.5'
  sha256 '5d80ecc5759f803e718ea077415e8a24061f2aa2779e2d6838dca6a879b2b3f4'

  url "http://xee.c3.cx/downloads/Xee#{version}.dmg"
  name 'Xee³'
  homepage 'http://xee.c3.cx/'
  license :commercial

  app 'Xee³.app'
end
