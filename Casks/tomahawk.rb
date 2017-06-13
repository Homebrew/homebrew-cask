cask 'tomahawk' do
  version '0.8.4'
  sha256 '65fba8767e21b898a61feeb077ae9a87685b5ebf4d2ecbccddd7168e85e695da'

  url "http://download.tomahawk-player.org/Tomahawk-#{version}.dmg"
  appcast 'https://github.com/tomahawk-player/tomahawk/releases.atom',
          checkpoint: '8b34e618385fe6f85a9887878b8cd2f11040e3d2c24a0364aa994c467e4c1bd8'
  name 'Tomahawk'
  homepage 'https://www.tomahawk-player.org/'

  app 'Tomahawk.app'
end
