class Tomahawk < Cask
  version '0.7.0'
  sha256 'df82d7c8ce9694f115a2e69e2533bde4233818afad5f6b5020bb881dd8cb6504'

  url "http://www.tomahawk-player.org/download.php?file=Tomahawk-#{version}.dmg"
  appcast 'http://download.tomahawk-player.org/sparkle/update.php',
          :sha256 => 'ef1c646c36717abdd5ffb12bd3a8f758fe12d575d975f6dca5353144679aca4f'
  homepage 'http://www.tomahawk-player.org/'
  license :unknown

  app 'Tomahawk.app'
end
