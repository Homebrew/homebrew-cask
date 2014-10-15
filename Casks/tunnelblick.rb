class Tunnelblick < Cask
  version '3.4.0_r3007'
  sha256 '3296266375812c954e0f3ce91adca676d06767f9ac26e3ad78452e0de1425279'

  url "https://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '7fa119cda4d782dc61cb75895c70b3572652df737c908270c48a09d67a874592'
  homepage 'https://code.google.com/p/tunnelblick/'
  license :oss

  app 'Tunnelblick.app'
  caveats 'For security reasons, Tunnelblick must be installed to /Applications and will request to be moved at launch.'
end
