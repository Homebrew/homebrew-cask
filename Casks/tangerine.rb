cask 'tangerine' do
  version '1.4.3a'
  sha256 '20577ac45e6fdcd1b7a22ca46e6aa06df88eb5e675c4da737e677b23c63e1949'

  url 'http://distrib.karelia.com/downloads/Tangerine!-4011.zip'
  appcast 'https://launch.karelia.com/appcast.php?version=0&product=13&appname=Tangerine!',
          checkpoint: '4562fcc5822206312ac2338bf5e820dcf4ed7ae27ac80f2670233593dc5b7733'
  name 'Tangerine!'
  homepage 'https://www.karelia.com/products/tangerine/'

  auto_updates true

  app 'Tangerine!.app'
end
