cask 'wingpersonal' do
  version '7.0.0.11'
  sha256 '4471cbd2fbbd21b878c9afa6f5cff95f768f4c8bd223b89f4c2d2c1a81269a46'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  app 'WingPersonal.app'
end
