cask 'yate' do
  version '3.14.3.1'
  sha256 '4c7cc85e994788f0a427c6cf7ac571537ccc50a97232cdfc9e414142b30a4902'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '9383d20a3a7eeaa3664ff1a2310aad4d47f60d9ab43fdb32160f0de6bd678162'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
