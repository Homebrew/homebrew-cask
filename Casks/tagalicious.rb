class Tagalicious < Cask
  version 'latest'
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/tagalicious/Tagalicious.zip'
  appcast 'https://files.thelittleappfactory.com/tagalicious/appcast.xml'
  homepage 'http://thelittleappfactory.com/tagalicious/'

  app 'Tagalicious.app'
end
