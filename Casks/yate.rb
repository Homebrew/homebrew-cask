cask 'yate' do
  version '3.14.1'
  sha256 'f383437c4873a09fbd01b6443c440503d3bbde8f1019e0e0a68f118cf7536d1a'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '11f517cd1d874becc4f8706a0c919bc868cf9ad18466219bea385bd940873970'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
