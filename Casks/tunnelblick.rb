cask :v1 => 'tunnelblick' do
  version '3.5.5_build_4270.4461'
  sha256 '0977d4f35706ed5000ff6f9ab11471ce0eaf9acc6319b6d6157191894c4038d5'

  url "https://www.tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '7fa119cda4d782dc61cb75895c70b3572652df737c908270c48a09d67a874592'
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
