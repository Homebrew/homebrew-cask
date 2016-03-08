cask 'tomahawk' do
  version '0.8.4'
  sha256 '65fba8767e21b898a61feeb077ae9a87685b5ebf4d2ecbccddd7168e85e695da'

  url "http://download.tomahawk-player.org/Tomahawk-#{version}.dmg"
  name 'Tomahawk'
  homepage 'https://www.tomahawk-player.org/'
  license :gpl

  app 'Tomahawk.app'
end
