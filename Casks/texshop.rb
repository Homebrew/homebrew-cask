class Texshop < Cask
  version '3.41.2'
  sha256 '4d568ff2e72b18425874e43a41eb18668443f90ae74dd42d6f13beff652c1530'

  url 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshop341.2.zip'
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml'
  homepage 'http://pages.uoregon.edu/koch/texshop'

  app 'TexShop.app'
end
