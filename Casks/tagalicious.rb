cask :v1 => 'tagalicious' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/tagalicious/Tagalicious.zip'
  appcast 'https://files.thelittleappfactory.com/tagalicious/appcast.xml'
  name 'Tagalicious'
  homepage 'http://thelittleappfactory.com/tagalicious/'
  license :commercial

  app 'Tagalicious.app'
end
