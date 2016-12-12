cask 'yate' do
  version '3.14.3.3'
  sha256 '3f4e1b420b6bf8373bdb78e0f2b99971ea60aea6264f0bba884a2f4ea6431c10'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '30d086ad456bc060136b2ffef98fd26c2345cae53a56790de7f1726fea60e7e3'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
