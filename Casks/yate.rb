cask 'yate' do
  version '5.0.3.3'
  sha256 '0e131207b08cf15f513b599531cebda8e5cf6037590ac9d7940c40b6a8d7e639'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
