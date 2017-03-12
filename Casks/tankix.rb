cask 'tankix' do
  version '555'
  sha256 '9349613c7b2962889587a08138b4ea493135229167f26c8c10222bd265902834'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'
end
