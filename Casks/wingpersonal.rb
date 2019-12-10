cask 'wingpersonal' do
  version '7.1.3.0'
  sha256 '85fc13b3317f4da76a93937410c4cb65a514af679a530ee451dd5640d3321fd3'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  depends_on macos: '>= :sierra'

  app 'WingPersonal.app'
end
