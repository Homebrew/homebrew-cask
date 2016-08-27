cask 'yate' do
  version '3.13.0.2'
  sha256 '28aafeefae414c179d1f22866865f87cfe1ff034079ba8fd8825d74d6c48d01f'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '454bc6ab0a129b84b251793bae9fff91de0ad0d59ab9c26027dfd096fac2b87f'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
