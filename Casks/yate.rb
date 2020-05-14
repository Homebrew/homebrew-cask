cask 'yate' do
  version '5.1.3.1'
  sha256 '57c2f9e33a83bb6b3685b4c9bbe70058374774ce489b23a10310dc787dce616a'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
