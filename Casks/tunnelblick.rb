class Tunnelblick < Cask
  url 'http://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_3.3.2.dmg'
  homepage 'https://code.google.com/p/tunnelblick/'
  version '3.3.2'
  sha256 '1e17563771a9536313e68d5a7ff4bddfebcc97a19704ed2a504517b9c7796026'
  link 'Tunnelblick.app'
  caveats 'For security reasons, Tunnelblick must be installed to /Applications and will request to be moved at launch.'
end
