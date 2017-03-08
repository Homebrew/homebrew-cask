cask 'tankix' do
  version '550'
  sha256 '29205b5b2d6298497cbf5954fe8111e2630c0539e285e0cf7e7db6b5721e0554'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'
end
