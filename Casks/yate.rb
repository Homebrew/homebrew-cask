cask 'yate' do
  version '3.17.1.2'
  sha256 '87aece064d852565537e36ce837e8325b7a5743e99d7145fadc1b0fb0cb11e7d'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '93e803aff283698f2af96675f378caeeb0000ac72ca0fc6f0045e73a739bf23f'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
