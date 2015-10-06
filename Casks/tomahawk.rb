cask :v1 => 'tomahawk' do
  version '0.8.4'
  sha256 '65fba8767e21b898a61feeb077ae9a87685b5ebf4d2ecbccddd7168e85e695da'

  url "http://download.tomahawk-player.org/Tomahawk-#{version}.dmg"
  appcast 'http://download.tomahawk-player.org/sparkle/update.php',
          :sha256 => 'ee73fcea7ce77725c28d756a9fda5b043811c140e70473e7a463a162b3e721df'
  name 'Tomahawk'
  homepage 'https://www.tomahawk-player.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tomahawk.app'
end
