cask 'tankix' do
  version '545'
  sha256 '3dc3a981968d5bfb4a29d189d81b9f84eb32e16732400e2f055cedc29c38f9a6'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'
end
