cask 'tunnelblick' do
  if MacOS.version <= :snow_leopard
    version '3.5.10_build_4270.4563'
    sha256 '2219f7ffcf5a5be7fb5f55945a19f6b3966e73d500feb03d8c376a0e00640ade'
  else
    version '3.6.7c_build_4606'
    sha256 '09d8bbc5171076d1d4480f3c91c1e6b12670e5f576676a640c6a7bcbc2a8abeb'
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
