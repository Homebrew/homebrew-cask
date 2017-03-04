cask 'windownaut' do
  version '1.3.1'
  sha256 '92b19e6ff6483a3e8279b9a6c495fe6f830fce68d2f09b26a0dbb7859a6de36d'

  url 'http://www.binarybakery.com/products/Windownaut.dmg'
  appcast 'http://www.binarybakery.com/products/windownaut-appcast.xml',
          checkpoint: '7e59e49790e17dc4af136ecf32610d71e7a87e690378f1b24817df70f82def15'
  name 'Windownaut'
  homepage 'http://www.binarybakery.com/aprod/windownaut.html'

  app 'Windownaut.app'
end
