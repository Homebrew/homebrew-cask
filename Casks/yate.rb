cask 'yate' do
  version '3.14.2'
  sha256 '3df902709523ccf4f48b9bf7bb4cfa961e51e03c32e350f308a7aaa62893cc60'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '56197c0bada3930f9ce13a41873f52d9717ffaae4e27df7a1362c92cd51015e9'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
