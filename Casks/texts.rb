cask 'texts' do
  version '1.3'
  sha256 'f1331bb082731bd828cb811b81f45ab6530d9208f30f398991f88aae3d330227'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml',
          :sha256 => '15d5acfee11e4be81a19fd9cfd58193b61eeb59fbfc40ceeb12c856d60b7499d'
  name 'Texts'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
