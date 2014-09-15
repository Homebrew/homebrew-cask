class Tomahawk < Cask
  version '0.7.0'
  sha256 'df82d7c8ce9694f115a2e69e2533bde4233818afad5f6b5020bb881dd8cb6504'

  url 'http://www.tomahawk-player.org/download.php?file=Tomahawk-0.7.0.dmg'
  appcast 'http://download.tomahawk-player.org/sparkle/update.php'
  homepage 'http://www.tomahawk-player.org/'

  app 'Tomahawk.app'
end
