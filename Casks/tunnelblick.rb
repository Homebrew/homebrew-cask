class Tunnelblick < Cask
  if MacOS.version < :mavericks
    version '3.3.4'
    sha256 'c14e4b2d4e30679851de7701c8a0b3167158c5ce029c59b49e49eb58946de913'
  else
    version '3.40_r3007'
    sha256 '3296266375812c954e0f3ce91adca676d06767f9ac26e3ad78452e0de1425279'
  end
  url "https://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss'
  homepage 'https://code.google.com/p/tunnelblick/'
  license :oss

  app 'Tunnelblick.app'
  caveats 'For security reasons, Tunnelblick must be installed to /Applications and will request to be moved at launch.'
end
