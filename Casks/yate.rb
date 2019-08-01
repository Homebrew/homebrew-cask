cask 'yate' do
  version '4.7.1'
  sha256 'e62f99e21842b74517ce81ccb58fc2e088a6ddabb241413905f0c132a41896d8'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
