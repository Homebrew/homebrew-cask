cask 'tankix' do
  version '554'
  sha256 '0ff35a28657c989096fe1e5367a9e1f558da12f603daf626ece3edf3df54f2c7'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'
end
