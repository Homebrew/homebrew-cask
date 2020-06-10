cask 'wingpersonal' do
  version '7.2.2.0'
  sha256 '9da480ad26ab7b67276df2f92fd93cd55446ee95ab5cd38b437c38df94165342'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  depends_on macos: '>= :sierra'

  app 'WingPersonal.app'
end
