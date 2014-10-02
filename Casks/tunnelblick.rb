class Tunnelblick < Cask
  if MacOS.version < :mavericks
    version '3.3.4'
    sha256 'c14e4b2d4e30679851de7701c8a0b3167158c5ce029c59b49e49eb58946de913'
  else
    version '3.4beta38_r3002'
    sha256 '3cd7f7e55adbd1fd30fc01c0eb8b7919d48602b648af15f841ee1cffd6e5708c'
  end
  url "https://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss'
  homepage 'https://code.google.com/p/tunnelblick/'
  license :oss

  app 'Tunnelblick.app'
  caveats 'For security reasons, Tunnelblick must be installed to /Applications and will request to be moved at launch.'
end
