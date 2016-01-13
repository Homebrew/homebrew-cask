cask 'wasted' do
  version :latest
  sha256 :no_check

  url 'http://wasted.werk01.de/Wasted.zip'
  appcast 'http://wasted.werk01.de/appcast.xml',
          :checkpoint => '38b416d34b42dcf6369eec1bee9460a138d22bb74b4fc0dd586fa1aa36d37d81'
  name 'WASTED'
  homepage 'http://wasted.werk01.de'
  license :mit

  app 'Wasted.app'
end
