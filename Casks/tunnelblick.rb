cask :v1 => 'tunnelblick' do
  version '3.4.2_build_4055.4161'
  sha256 '19cd879009d8f6989abd1f7e1ed1feb5dc68995f3146e08c547d4b64d3679c5b'

  url "https://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '7fa119cda4d782dc61cb75895c70b3572652df737c908270c48a09d67a874592'
  homepage 'https://code.google.com/p/tunnelblick/'
  license :gpl

  app 'Tunnelblick.app'
  uninstall :launchctl => 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            :quit      => 'net.tunnelblick.tunnelblick'

  caveats do
    os_version_only *%w(10.4 10.5 10.6 10.7 10.8 10.9 10.10)
    <<-EOS.undent
    For security reasons, Tunnelblick must be installed to /Applications,
    and will request to be moved at launch.
    EOS
  end
end
