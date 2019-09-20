cask 'yate' do
  version '5.0.0.1'
  sha256 'f5166aae9a25a206e7748c8136aeae2817c22fc8330703d492f3f4be8ba8d02f'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
