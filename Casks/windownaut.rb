cask 'windownaut' do
  version :latest
  sha256 :no_check

  url 'http://www.binarybakery.com/products/Windownaut.dmg'
  appcast 'http://www.binarybakery.com/products/windownaut-appcast.xml',
          :sha256 => '66a74e75906524b5b52bcdc412e2d3931f0b30ebf508cc47f106922a1bb51df4'
  name 'Windownaut'
  homepage 'http://www.binarybakery.com/aprod/windownaut.html'
  license :commercial

  app 'Windownaut.app'
end
