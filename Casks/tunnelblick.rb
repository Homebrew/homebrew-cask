cask 'tunnelblick' do
  if MacOS.version <= :snow_leopard
    version '3.5.9_build_4270.4560'
    sha256 '7651754cab92c5f61fc22b55448875cf14fcf8b6f5b3ba469899740c49b6fae3'
  else
    version '3.6.7a_build_4603'
    sha256 '29c79907550a8077008eb4a4d71877d97dd5ede4c43272bb151908df5ac6e0b1'
  end

  url "https://www.tunnelblick.net/release/Tunnelblick_#{version}.dmg"
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
