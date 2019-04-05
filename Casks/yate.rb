cask 'yate' do
  version '4.6'
  sha256 'f76bd58c9f85e763b5f45885a206ae022843676f53c1b41fb3258cf9550e058b'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
