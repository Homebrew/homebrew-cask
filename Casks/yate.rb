cask 'yate' do
  version '5.0.1'
  sha256 '028e17e2db2fd37059691cd051d05abf063b82937f26a2674034f399eaf19f98'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
