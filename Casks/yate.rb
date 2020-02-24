cask 'yate' do
  version '5.1.1.2'
  sha256 'a7fd5b96e15f4ac2d535205f4b70d941b9182047b4c2c8e0eca61dd506898e03'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
