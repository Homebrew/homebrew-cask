cask 'wingpersonal' do
  version '7.2.1.0'
  sha256 'b2274f4bab7d414d5b1158515ba27c9e9a80f853d6bd275c6c8587d0fb07d73d'

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast 'https://www.wingware.com/downloads/wing-personal'
  name 'WingPersonal'
  homepage 'https://www.wingware.com/'

  depends_on macos: '>= :sierra'

  app 'WingPersonal.app'
end
