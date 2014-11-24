cask :v1 => 'texshop' do
  version '3.45.2'
  sha256 '2d42e2b6601ece337aafbc57acca148c3a9f066c8ecb5807c82e4e67bf4c82e5'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub(%r{^(\d+)\.(\d+)},'\1\2')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          :sha256 => 'c40ae2cd48a38ab90fb5e3e9ec92e8769be03e13dfc2a6246c63ab8f94f51b10'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TexShop.app'
end
