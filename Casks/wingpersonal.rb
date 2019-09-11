cask 'wingpersonal' do
  version '7.1.1.0'
  sha256 '5eb348f1650ef5e14ed200793b71df00263298376d4d18cad4c4f81b381728ed'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  app 'WingPersonal.app'
end
