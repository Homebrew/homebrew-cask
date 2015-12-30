cask 'wasted' do
  version :latest
  sha256 :no_check

  url 'http://wasted.werk01.de/Wasted.zip'
  name 'WASTED'
  appcast 'http://wasted.werk01.de/appcast.xml',
          :sha256 => '9fb3139c5061c58d62e25ffce233c28f774439c7f9d09276ce5470e891f959d7'
  homepage 'http://wasted.werk01.de'
  license :mit

  app 'Wasted.app'
end
