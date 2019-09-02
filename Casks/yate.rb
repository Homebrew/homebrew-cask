cask 'yate' do
  version '4.7.1.1'
  sha256 'a85832318aea4fe0645596cf1aa9dec1219e324d8d38afc245a82373a23ba41d'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
