cask 'wingpersonal' do
  version '7.2.3.0'
  sha256 'f97d1cfafbade9325bc6adc4ed6fd6d55c5d1701635a10119777093f542ec7e3'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  depends_on macos: '>= :sierra'

  app 'WingPersonal.app'
end
