cask 'tunnelblick' do
  if MacOS.release <= :snow_leopard
    version '3.5.8_build_4270.4530'
    sha256 'd634a9a5fd06f95c7325987197fb7890119bf0a40a3958284814958a14c20ce3'
  else
    version '3.6.0a_build_4543.4546'
    sha256 '0850dffd539cc60097d29fdb8a8e6b1cf83eeec7ea8bc7c4a821df69fe817441'
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
