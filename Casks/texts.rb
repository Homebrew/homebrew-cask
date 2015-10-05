cask :v1 => 'texts' do
  version '0.23.5'
  sha256 '2c8a15074bd37c57d23280a56b280be1749ae2e38d7bec80292d131be7c6b289'

  url "http://www.texts.io/Texts-#{version}.dmg"
  name 'Texts'
  appcast 'http://www.texts.io/appcast-osx.xml',
          :sha256 => '81958ab59d75e7a5b31c49a3d7e19702a63403e67a8c3ea111e72c130bdcc285'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
