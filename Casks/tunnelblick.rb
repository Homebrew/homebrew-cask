cask 'tunnelblick' do
  version '3.5.5_build_4270.4461'
  sha256 '0977d4f35706ed5000ff6f9ab11471ce0eaf9acc6319b6d6157191894c4038d5'

  url "https://www.tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          checkpoint: 'b1ff110ba0ed2a142dff7fea95ac60264c57923191ac18c7ba553821ac311833'
  name 'Tunnelblick'
  homepage 'https://www.tunnelblick.net'
  license :gpl

  auto_updates true
  depends_on macos: '>= :tiger'

  app 'Tunnelblick.app'

  uninstall launchctl: 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            quit:      'net.tunnelblick.tunnelblick'

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
