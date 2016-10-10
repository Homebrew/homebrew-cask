cask 'tomahawk' do
  version '0.8.4'
  sha256 '65fba8767e21b898a61feeb077ae9a87685b5ebf4d2ecbccddd7168e85e695da'

  url "http://download.tomahawk-player.org/Tomahawk-#{version}.dmg"
  appcast 'https://github.com/tomahawk-player/tomahawk/releases.atom',
          checkpoint: 'a2c6432ac6479a859f51aae60e6e0eb6371b6274e89d272c3b9e05b4a39c89a1'
  name 'Tomahawk'
  homepage 'https://www.tomahawk-player.org/'

  app 'Tomahawk.app'
end
