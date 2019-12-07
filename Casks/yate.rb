cask 'yate' do
  version '5.0.2'
  sha256 '604b3a4ff527a150710b83c9a11facf6a447f5a05534cbc42f4cd499a36ef8b9'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
