cask 'wingpersonal' do
  version '7.0.4.0'
  sha256 '635e328ddf869374b3144e23f84a0bcfea52b7233ba2b5130fa0e188c8c4f548'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  app 'WingPersonal.app'
end
