cask 'yate' do
  version '6.0.0.2'
  sha256 'b91353c5620d028e138d1632e55de50506650931959dc5d719ac6384d1e914dc'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
