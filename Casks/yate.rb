cask 'yate' do
  version '5.0'
  sha256 '1a828509b9c3acee6c29b45f365a33d25b58adf6779ac233aa429b5f5168f0fe'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
