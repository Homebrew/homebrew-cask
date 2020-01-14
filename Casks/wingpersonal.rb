cask 'wingpersonal' do
  version '7.2.0.0'
  sha256 '2a848e7b0e99bae995bfe5849bfdcdd21702d97949b1d20cbf92dc21b0235ea2'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  depends_on macos: '>= :sierra'

  app 'WingPersonal.app'
end
