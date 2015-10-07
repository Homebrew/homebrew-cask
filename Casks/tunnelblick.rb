cask :v1 => 'tunnelblick' do
  version '3.5.4_build_4270.4395'
  sha256 'b4ab4d3e7b6b61b3f19f73e82af36c5161a0844ef9696a82c001ea972626dc7d'

  url "https://www.tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '3d0d7a0240db7bb0e4ec4729a7fce804a261492461444a36d3b6c38c9d8ad4fb'
  name 'Tunnelblick'
  homepage 'https://www.tunnelblick.net'
  license :gpl

  app 'Tunnelblick.app'

  uninstall :launchctl => 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            :quit      => 'net.tunnelblick.tunnelblick'

  depends_on :macos => '>= :tiger'

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
