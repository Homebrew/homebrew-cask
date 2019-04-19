cask 'wingpersonal' do
  version '7.0.1.2'
  sha256 'bfe754577dd15b8fec79618cddafba62c7da3ec0a2b3401cab2eae214d46e914'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  app 'WingPersonal.app'
end
