cask 'tangerine' do
  version '1.4.3'
  sha256 '67f03f203eef2efdce782d1ee249ac14bf276dcd3219287f218dc2d3ceaa73df'

  url 'http://distrib.karelia.com/downloads/Tangerine!-4010.zip'
  appcast 'https://launch.karelia.com/appcast.php?version=0&product=13&appname=Tangerine!',
          checkpoint: '4562fcc5822206312ac2338bf5e820dcf4ed7ae27ac80f2670233593dc5b7733'
  name 'Tangerine!'
  homepage 'https://www.karelia.com/products/tangerine/'
  license :commercial

  auto_updates true

  app 'Tangerine!.app'

  postflight do
    suppress_move_to_applications
  end
end
