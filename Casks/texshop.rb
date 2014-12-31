cask :v1 => 'texshop' do
  version :latest
  sha256 :no_check

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          :sha256 => 'c40ae2cd48a38ab90fb5e3e9ec92e8769be03e13dfc2a6246c63ab8f94f51b10'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TexShop.app'
end
