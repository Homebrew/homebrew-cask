cask 'yate' do
  version '4.7.0.1'
  sha256 'c4d6f2aae89801aaccbf0a684fe4edc5e95b302b6c4bfec2ee2d633314dde91a'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
