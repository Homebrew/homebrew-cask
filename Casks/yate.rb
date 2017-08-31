cask 'yate' do
  version '3.17'
  sha256 '17d75944844003edb5b3763921a8c4593d0a0994e17355540137a7c5fa0f8d9d'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '51ed535c3d01369a282d97f1411ee9597bea5be4f9909a0b1345a56a0da1691b'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
