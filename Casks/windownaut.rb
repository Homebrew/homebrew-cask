cask :v1 => 'windownaut' do
  version :latest
  sha256 :no_check

  url 'http://www.binarybakery.com/products/Windownaut.dmg'
  name 'Windownaut'
  appcast 'http://www.binarybakery.com/products/windownaut-appcast.xml',
          :sha256 => '66a74e75906524b5b52bcdc412e2d3931f0b30ebf508cc47f106922a1bb51df4'
  homepage 'http://www.binarybakery.com/aprod/windownaut.html'
  license :commercial

  app 'Windownaut.app'
end
