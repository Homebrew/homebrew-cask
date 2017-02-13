cask 'tankix' do
  version :latest
  sha256 :no_check

  url 'http://static.tankix.com/app/StandaloneOSXIntel64/prod_523/TankiX.dmg'
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'
end
