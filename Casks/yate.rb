cask 'yate' do
  version '5.0.1.3'
  sha256 'b56ec68760832e4d9392e7e84b8f541ff24ae7e30abed093ab25f4eb9ac33739'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
