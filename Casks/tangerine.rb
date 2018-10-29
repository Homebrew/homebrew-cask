cask 'tangerine' do
  version '1.4.3a'
  sha256 '20577ac45e6fdcd1b7a22ca46e6aa06df88eb5e675c4da737e677b23c63e1949'

  url 'https://www.karelia.com/files/13/Tangerine!.zip'
  appcast 'https://launch.karelia.com/appcast.php?version=0&product=13&appname=Tangerine!'
  name 'Tangerine!'
  homepage 'https://www.karelia.com/products/tangerine/'

  auto_updates true

  app 'Tangerine!.app'
end
