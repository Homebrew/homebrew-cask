cask 'tagalicious' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/tagalicious/Tagalicious.zip'
  appcast 'https://files.thelittleappfactory.com/tagalicious/appcast.xml',
          :checkpoint => '730c604d39098c99082aa446f07b14f420a1da2feaeeeeb71acdd71fde73bb46'
  name 'Tagalicious'
  homepage 'http://thelittleappfactory.com/tagalicious/'
  license :commercial

  app 'Tagalicious.app'
end
