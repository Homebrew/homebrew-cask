cask 'yate' do
  version '5.1.3'
  sha256 'b436eee807b6cfa47216de5834a135d9a1818614a43fe2a770df0b90353b5a9e'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
