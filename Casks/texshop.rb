class Texshop < Cask
  version '3.44'
  sha256 '8cfd2d5edf2a30b1744c04ae29bf44674113ab35a1ec6cb438de47b00b298c4e'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.gsub('.','')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          :sha256 => '2ac3386dd338df8178ee8a007ebf9f9db649120307b71c35f5a1b3eeedaa92c6'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :unknown

  app 'TexShop.app'
end
