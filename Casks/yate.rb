cask 'yate' do
  version '5.0.3.2'
  sha256 '5b408188df2a776ab88509da9296a1e2d8a3aad53e1db92e3f278410c20a0bed'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
