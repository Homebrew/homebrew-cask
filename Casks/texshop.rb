cask :v1 => 'texshop' do
  version '3.45'
  sha256 '63afb1141ae41277dc40c3f6f8130e104d89cac2be85c21373a2087aaa25a4eb'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.gsub('.','')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          :sha256 => '2ac3386dd338df8178ee8a007ebf9f9db649120307b71c35f5a1b3eeedaa92c6'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :unknown

  app 'TexShop.app'
end
