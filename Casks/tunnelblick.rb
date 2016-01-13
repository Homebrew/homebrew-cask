cask 'tunnelblick' do
  version '3.5.5_build_4270.4461'
  sha256 '0977d4f35706ed5000ff6f9ab11471ce0eaf9acc6319b6d6157191894c4038d5'

  url "https://www.tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '0a5bcb70b865e548c17e38a6b4721366716d6f91ef137e64508db23eebd18abc'
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
