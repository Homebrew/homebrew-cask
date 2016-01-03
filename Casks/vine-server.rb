cask 'vine-server' do
  version '4.01'
  sha256 '10e32d9594614b5169261b5b9bbeadb6f5adf2cc1c4bf2fdce68be3ccd7ca4a9'

  url "http://www.testplant.com/downloads/Vine/VineServer#{version}.dmg"
  name 'Vine Server'
  homepage 'http://www.testplant.com/products/vine/vine-server/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Vine Server.app'
end
