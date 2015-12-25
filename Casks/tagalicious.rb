cask 'tagalicious' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/tagalicious/Tagalicious.zip'
  appcast 'https://files.thelittleappfactory.com/tagalicious/appcast.xml',
          :sha256 => '2d746cee53d08fbee50fef97a583ebf2af9a46e79a42dbd5d15dbc449290d586'
  name 'Tagalicious'
  homepage 'http://thelittleappfactory.com/tagalicious/'
  license :commercial

  app 'Tagalicious.app'
end
