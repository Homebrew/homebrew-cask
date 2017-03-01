cask 'tankix' do
  version '535'
  sha256 '0ac40aa89a8ca9e18ecf051a283113965cdff2b894412aff0d12d45308290d99'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'
end
