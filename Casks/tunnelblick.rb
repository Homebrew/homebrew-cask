class Tunnelblick < Cask
  version '3.3.4'
  sha256 'c14e4b2d4e30679851de7701c8a0b3167158c5ce029c59b49e49eb58946de913'

  url 'https://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_3.3.4.dmg'
  appcast 'https://www.tunnelblick.net/appcast.rss'
  homepage 'https://code.google.com/p/tunnelblick/'

  app 'Tunnelblick.app'
  caveats 'For security reasons, Tunnelblick must be installed to /Applications and will request to be moved at launch.'
end
