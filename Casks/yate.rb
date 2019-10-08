cask 'yate' do
  version '5.0.1.2'
  sha256 '8c08cbb467f3f088dd0116333b07ef43461d4ed25eb43dce938daae54b26f1ae'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
