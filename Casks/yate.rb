cask 'yate' do
  version '4.6.1'
  sha256 '268b3cd4ae5ef4584cc7348e2a2c331ad30a119e7742b6631dd19ea55f09356e'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
