cask 'yate' do
  version '4.1.0.3'
  sha256 '5f8a9baa1223f7b1d9431c2c42f7ce5e207c54bbd00c71a5ede6bfb3c7b1c6f4'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'b8b7a0825feb442318ba16b36cbec210234e1e3308bacb174526be4e7b14cc18'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
