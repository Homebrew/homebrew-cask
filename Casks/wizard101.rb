cask 'wizard101' do
  version '1.13'
  sha256 'd260d5930c9f32367c87cb68b634b0210e070b3acc62e290a90ffa8406975845'

  url 'http://versionec.us.wizard101.com/Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com/Wizard101.xml'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'

  app 'Wizard101.app'
end
