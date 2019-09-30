cask 'yate' do
  version '5.0.1.1'
  sha256 'bd56bd1ec5ea3366d9c39232b14a9cf5582d5f698c9930baa4e300a4c6ac4cd7'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
