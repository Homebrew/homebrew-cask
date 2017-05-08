cask 'windownaut' do
  version '1.3.1'
  sha256 '92b19e6ff6483a3e8279b9a6c495fe6f830fce68d2f09b26a0dbb7859a6de36d'

  url 'http://www.binarybakery.com/products/Windownaut.dmg'
  appcast 'http://www.binarybakery.com/products/windownaut-appcast.xml',
          checkpoint: '6520cae7acac051f07d83ae26055b130921098c95a00f7dc878063b17100052e'
  name 'Windownaut'
  homepage 'http://www.binarybakery.com/aprod/windownaut.html'

  app 'Windownaut.app'
end
