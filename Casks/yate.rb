cask 'yate' do
  version '3.15'
  sha256 'a6e7306de1b5fc485702ce2b1177c7f05ffab66ef26cace046777d7866edb17b'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '6ca07e56be7b8e2791e348e6157f1b7a02f002095e328c4462276572b8f34870'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
