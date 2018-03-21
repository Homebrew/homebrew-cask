cask 'yate' do
  version '3.17.4.2'
  sha256 '2a7d96d79780de078c486456703a55cb5a778db59e2f48360294d9692a6a3b78'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'b7e1f0b3be36cf3f9e547cbe7f9046e859b55f534fe76f288d8b532607249417'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
