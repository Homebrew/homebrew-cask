cask 'tankix' do
  version '532'
  sha256 'f545d6ef9e9127dd2d4a65e57a054286a12150cdee2c216deb50a28cd5e54c29'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'
end
