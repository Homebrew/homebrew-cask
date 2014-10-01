class Texshop < Cask
  version '3.42'
  sha256 'd37a8516751dbc97574d019243c0ff8d26e65bab71577f2f82a2d8af5d2dbc34'

  url 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshop342.zip'
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :unknown

  app 'TexShop.app'
end
