cask 'typinator' do
  version '8.4'
  sha256 '2da08e02f17617737e66cc1184c3fff19ee6a41cbec485508d1ed5a7ff44dec3'

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://update.ergonis.com/vck/typinator.xml'
  name 'Typinator'
  homepage 'https://www.ergonis.com/'

  app 'Typinator.app'
end
