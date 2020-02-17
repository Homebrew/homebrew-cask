cask 'yate' do
  version '5.1.1'
  sha256 '4a6f928c9041d94815ff5e13e6fc69336387ac1f27b2697d2bc2f2c16d6b30c5'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
