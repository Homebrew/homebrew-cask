cask 'yate' do
  version '4.1.0.1'
  sha256 '4e096a9fe08f54c6ad9968200ba68ac4973ae6c7a8ba1e80da6cf6733e213273'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '6dbffa5e78ab38d8d3f7e78eb4959d08ee433376e4334530aec62697c30d322f'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
