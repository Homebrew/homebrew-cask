class Texshop < Cask
  version '3.43'
  sha256 '81cc938d3d2c3b5ac91554127a398357b8844ec41f7a2ba3e5614cf19a4ca4a5'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.gsub('.','')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          :sha256 => '2ac3386dd338df8178ee8a007ebf9f9db649120307b71c35f5a1b3eeedaa92c6'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :unknown

  app 'TexShop.app'
end
