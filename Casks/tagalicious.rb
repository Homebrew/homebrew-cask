cask 'tagalicious' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/tagalicious/Tagalicious.zip'
  appcast 'https://files.thelittleappfactory.com/tagalicious/appcast.xml',
          :checkpoint => 'b26d8680d1188dd7907cc2436da0235aab89556e561a1f6c80e55af73e1bf4f6'
  name 'Tagalicious'
  homepage 'http://thelittleappfactory.com/tagalicious/'
  license :commercial

  app 'Tagalicious.app'
end
