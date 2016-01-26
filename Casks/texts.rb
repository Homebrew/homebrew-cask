cask 'texts' do
  version '1.3'
  sha256 'f1331bb082731bd828cb811b81f45ab6530d9208f30f398991f88aae3d330227'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml',
          checkpoint: '3d86b0d8271ab2f1bda19cdd6282025b39be030d4b9f82b55f9958fafca87286'
  name 'Texts'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
