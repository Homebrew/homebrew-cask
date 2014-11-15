cask :v1 => 'tangerine' do
  version '1.4.8'
  sha256 'dea00674331b1aa663cf00f64b0ce208638a136575987e1a7f50bd135117f2d9'

  url "http://distrib.karelia.com/downloads/Tangerine!-4008.zip"
  homepage 'http://www.karelia.com/products/tangerine/'
  license :unknown

  app 'Tangerine!.app'

  postflight do
    suppress_move_to_applications
  end
end
