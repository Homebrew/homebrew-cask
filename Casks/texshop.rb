cask 'texshop' do
  version '3.83'
  sha256 'adae60e4bda3fb708ed967c0b79e32ba1208e3673ced732ede100771b82dbe53'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '7e80acf776e667b141a2543397ce720ed695b6a7c1bc001a47dd9b88c6f5ce55'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
