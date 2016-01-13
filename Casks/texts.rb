cask 'texts' do
  version '1.3'
  sha256 'f1331bb082731bd828cb811b81f45ab6530d9208f30f398991f88aae3d330227'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml',
          :sha256 => '46d60fc3c5f52eee34b8e665c9c5beca1b5699eb801a13cc66a7d73deba9224a'
  name 'Texts'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
