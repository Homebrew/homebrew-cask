cask 'wingpersonal' do
  version '7.1.2.0'
  sha256 '7edf6cdc35bfd2e623d3b70988361e0599849319adceb528167112c72c51922a'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  depends_on macos: '>= :sierra'

  app 'WingPersonal.app'
end
