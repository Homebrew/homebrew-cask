cask 'yate' do
  version '6.0'
  sha256 '9adc4656c736d0b65807be6664b537ff392e0244b65203ef25efb0dc8d12e680'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
