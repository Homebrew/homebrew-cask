cask 'windownaut' do
  version :latest
  sha256 :no_check

  url 'http://www.binarybakery.com/products/Windownaut.dmg'
  appcast 'http://www.binarybakery.com/products/windownaut-appcast.xml',
          :sha256 => '9013652fc0b016429c7280f0563b65b6f6a92321744cd3c15b59eefc248f73da'
  name 'Windownaut'
  homepage 'http://www.binarybakery.com/aprod/windownaut.html'
  license :commercial

  app 'Windownaut.app'
end
