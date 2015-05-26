cask :v1 => 'tomahawk' do
  version '0.8.4'
  sha256 '65fba8767e21b898a61feeb077ae9a87685b5ebf4d2ecbccddd7168e85e695da'

  url "http://download.tomahawk-player.org/Tomahawk-#{version}.dmg"
  appcast 'http://download.tomahawk-player.org/sparkle/update.php',
          :sha256 => 'ef1c646c36717abdd5ffb12bd3a8f758fe12d575d975f6dca5353144679aca4f'
  name 'Tomahawk'
  homepage 'http://www.tomahawk-player.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tomahawk.app'
end
