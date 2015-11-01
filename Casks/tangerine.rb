cask :v1 => 'tangerine' do
  version '1.4.8'
  sha256 'dea00674331b1aa663cf00f64b0ce208638a136575987e1a7f50bd135117f2d9'

  url 'http://distrib.karelia.com/downloads/Tangerine!-4008.zip'
  name 'Tangerine!'
  appcast 'http://launch.karelia.com/appcast.php?version=0&product=13&appname=Tangerine!',
          :sha256 => 'c8e3f2ce6c968bd670dd33e2be1412a3a7f7614256737c05e7f3c3e5414e2bc9'
  homepage 'https://www.karelia.com/products/tangerine/'
  license :commercial

  app 'Tangerine!.app'

  postflight do
    suppress_move_to_applications
  end
end
