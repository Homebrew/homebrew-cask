cask :v1 => 'tunnelblick' do
  version '3.4.1_r3054'
  sha256 '44a9b1986c100698c82186c4ce404d5acf34f292d08c5f8528c33e22646f955a'

  url "https://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '7fa119cda4d782dc61cb75895c70b3572652df737c908270c48a09d67a874592'
  homepage 'https://code.google.com/p/tunnelblick/'
  license :oss

  app 'Tunnelblick.app'
  uninstall :launchctl => 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            :quit      => 'net.tunnelblick.tunnelblick'

  caveats 'For security reasons, Tunnelblick must be installed to /Applications and will request to be moved at launch.'
end
