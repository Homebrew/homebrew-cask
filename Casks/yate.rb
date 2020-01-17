cask 'yate' do
  version '5.1'
  sha256 '26243c4ab8250fb1b13b35f6c7efc8e7444d2fc85db2892c8fc0928b0f8f4cb7'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
