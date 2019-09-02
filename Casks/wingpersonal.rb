cask 'wingpersonal' do
  version '7.1.0.2'
  sha256 '11fe170d785168250a526b9f1c0efce9e4c7bc12d78467d9bb6cae98d53345c5'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  app 'WingPersonal.app'
end
