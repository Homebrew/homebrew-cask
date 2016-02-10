cask 'tangerine' do
  version '1.4.3'
  sha256 '67f03f203eef2efdce782d1ee249ac14bf276dcd3219287f218dc2d3ceaa73df'

  url 'http://distrib.karelia.com/downloads/Tangerine!-4010.zip'
  appcast 'https://launch.karelia.com/appcast.php?version=0&product=13&appname=Tangerine!',
          checkpoint: '074d108b7f07806dd2a3d9d86b5dbf7c4d0a362c6937f8a29c453829c9a212bb'
  name 'Tangerine!'
  homepage 'https://www.karelia.com/products/tangerine/'
  license :commercial

  auto_updates true

  app 'Tangerine!.app'

  postflight do
    suppress_move_to_applications
  end
end
