cask 'wingpersonal' do
  version '7.0.2.0'
  sha256 'e90bfbbcdbc79992717937d61f30a8becf216d8b032fdd63193940e0bf764c20'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  app 'WingPersonal.app'
end
