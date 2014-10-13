class Texshop < Cask
  version '3.43'
  sha256 '81cc938d3d2c3b5ac91554127a398357b8844ec41f7a2ba3e5614cf19a4ca4a5'

  url 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshop343.zip'
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :unknown

  app 'TexShop.app'
end
