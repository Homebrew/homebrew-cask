cask 'yate' do
  version '3.11'
  sha256 '7d3a9a82a4db9ecff34232813627cc741789db30f86bd0d2c94fc2f9fc96be65'

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '509278fd251bceb68a61a7bc1737e2f5c9ed448943aa6c805f47758bbf3dbb4b'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
