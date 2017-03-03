cask 'tankix' do
  version '542'
  sha256 '116b4fd4f8f885d7771c8c7ab28eddb3f76ee773d1007b54e728d10145760baf'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'
end
