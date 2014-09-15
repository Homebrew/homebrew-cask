class Texshop < Cask
  version '3.41'
  sha256 'd020937edc446d9fb5fbb51580dd62c138bffcb1f1897a67ca0de338e964c405'

  url 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshop341.zip'
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml'
  homepage 'http://pages.uoregon.edu/koch/texshop'

  app 'TexShop.app'
end
