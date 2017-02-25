cask 'vine-server' do
  version '4.01'
  sha256 '10e32d9594614b5169261b5b9bbeadb6f5adf2cc1c4bf2fdce68be3ccd7ca4a9'

  url "http://www.testplant.com/downloads/Vine/VineServer#{version}.dmg"
  name 'Vine Server'
  homepage 'https://www.testplant.com/dlds/vine/'

  app 'Vine Server.app'
end
