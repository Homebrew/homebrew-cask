cask 'windownaut' do
  version :latest
  sha256 :no_check

  url 'http://www.binarybakery.com/products/Windownaut.dmg'
  appcast 'http://www.binarybakery.com/products/windownaut-appcast.xml',
          :checkpoint => '6edfb85c32f30aee7f9e22698fc8216ec8776296c66da8cb7c0d30dca2f13369'
  name 'Windownaut'
  homepage 'http://www.binarybakery.com/aprod/windownaut.html'
  license :commercial

  app 'Windownaut.app'
end
