cask 'yate' do
  version '5.1.2'
  sha256 '89bc3796a1ee281150d469bf24f547e25a018b87e290f8d8e333738da0f97a10'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
