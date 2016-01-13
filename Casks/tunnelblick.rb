cask 'tunnelblick' do
  version '3.5.5_build_4270.4461'
  sha256 '0977d4f35706ed5000ff6f9ab11471ce0eaf9acc6319b6d6157191894c4038d5'

  url "https://www.tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '3d0d7a0240db7bb0e4ec4729a7fce804a261492461444a36d3b6c38c9d8ad4fb'
  name 'Tunnelblick'
  homepage 'https://www.tunnelblick.net'
  license :gpl

  depends_on :macos => '>= :tiger'

  app 'Tunnelblick.app'

  uninstall :launchctl => 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            :quit      => 'net.tunnelblick.tunnelblick'

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
