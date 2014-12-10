cask :v1 => 'tagalicious' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/tagalicious/Tagalicious.zip'
  appcast 'https://files.thelittleappfactory.com/tagalicious/appcast.xml'
  homepage 'http://thelittleappfactory.com/tagalicious/'
  license :unknown    # todo: improve this machine-generated value

  app 'Tagalicious.app'
end
