cask 'yate' do
  version '5.1.0.1'
  sha256 '22fcecb4eefd22b677a5745e6a3ef56983f1819d6a1aec452333e3919cb06001'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
