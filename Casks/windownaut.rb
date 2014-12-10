cask :v1 => 'windownaut' do
  version :latest
  sha256 :no_check

  url 'http://www.binarybakery.com/products/Windownaut.dmg'
  homepage 'http://www.binarybakery.com/aprod/index.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Windownaut.app'
end
