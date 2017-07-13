cask 'yate' do
  version '3.16.2.1'
  sha256 '461512039ac4f6b09313e089233c7bc4e74cfec983fb9d28bc816ccee4f74def'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '43c4eba17acc3a5f8bd6150fe7029d6e19fb073b379664b524c8bce64ffbd33b'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
