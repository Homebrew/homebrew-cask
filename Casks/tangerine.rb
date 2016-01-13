cask 'tangerine' do
  version '1.4.8'
  sha256 'dea00674331b1aa663cf00f64b0ce208638a136575987e1a7f50bd135117f2d9'

  url 'http://distrib.karelia.com/downloads/Tangerine!-4008.zip'
  appcast 'https://launch.karelia.com/appcast.php?version=0&product=13&appname=Tangerine!',
          :sha256 => '1fd629ecb579272a5a0033500cd72a9396bb26dc53eb0cb24b7302d0ff529501'
  name 'Tangerine!'
  homepage 'https://www.karelia.com/products/tangerine/'
  license :commercial

  app 'Tangerine!.app'

  postflight do
    suppress_move_to_applications
  end
end
