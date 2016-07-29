cask 'tagalicious' do
  version '1.5.5'
  sha256 'dc3f3bbdc986f9b5b3dc698a466155273eb85483ed7708a9b2a1db898d053ba0'

  url 'https://files.thelittleappfactory.com/tagalicious/Tagalicious.zip'
  appcast 'https://files.thelittleappfactory.com/tagalicious/appcast.xml',
          checkpoint: '730c604d39098c99082aa446f07b14f420a1da2feaeeeeb71acdd71fde73bb46'
  name 'Tagalicious'
  homepage 'http://thelittleappfactory.com/tagalicious/'
  license :commercial

  app 'Tagalicious.app'
end
