cask :v1 => 'windownaut' do
  version :latest
  sha256 :no_check

  url 'http://www.binarybakery.com/products/Windownaut.dmg'
  name 'Windownaut'
  homepage 'http://www.binarybakery.com/aprod/windownaut.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Windownaut.app'
end
