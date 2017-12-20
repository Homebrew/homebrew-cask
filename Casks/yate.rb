cask 'yate' do
  version '3.17.4'
  sha256 '682c2d6fd1f1cb8483fc9e72dbbfaadfaca6ebe33ddf2bfecddaccf561ade1c1'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '32375f7738f4ecde8c1501b645846083112a478db3aa5d6b8037819011b3473e'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
