cask :v1 => 'wasted' do
  version :latest
  sha256 :no_check

  url 'http://wasted.werk01.de/Wasted.zip'
  name 'WASTED'
  appcast 'http://wasted.werk01.de/appcast.xml'
  homepage 'http://wasted.werk01.de'
  license :mit

  app 'Wasted.app'
end
