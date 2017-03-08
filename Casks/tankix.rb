cask 'tankix' do
  version '552'
  sha256 '3a2f11cef5980f4b4a2962500127bb22c48db30254af21e049608f2642c93f42'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'
end
