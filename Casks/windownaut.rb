cask 'windownaut' do
  version '1.2.6'
  sha256 '1b779ce1f885b5157edba9e4e77b8a0681ffff7acec98752dce374b332036df8'

  url 'http://www.binarybakery.com/products/Windownaut.dmg'
  appcast 'http://www.binarybakery.com/products/windownaut-appcast.xml',
          checkpoint: '6edfb85c32f30aee7f9e22698fc8216ec8776296c66da8cb7c0d30dca2f13369'
  name 'Windownaut'
  homepage 'http://www.binarybakery.com/aprod/windownaut.html'
  license :commercial

  app 'Windownaut.app'
end
