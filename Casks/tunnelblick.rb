cask 'tunnelblick' do
  version '3.6.10,build_4760'
  sha256 '05f8f487a08f10f0b2558c27fde3aa37a8dbe609e0c7cf556f38d92cc49b18e0'

  # github.com/Tunnelblick/Tunnelblick/releases/download was verified as official when first introduced to the cask
  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.before_comma}/Tunnelblick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://github.com/Tunnelblick/Tunnelblick/releases.atom',
          checkpoint: 'eaec16a7880bb2105e2a2de1a342b7d77f6ad5b11dca085c94f04e28b071ae78'
  name 'Tunnelblick'
  homepage 'https://www.tunnelblick.net/'

  auto_updates true
  depends_on macos: '>= :tiger'

  app 'Tunnelblick.app'

  uninstall launchctl: 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            quit:      'net.tunnelblick.tunnelblick'

  zap delete: [
                '~/Library/Application Support/Tunnelblick',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/net.tunnelblick.tunnelblick.help',
                '~/Library/Caches/net.tunnelblick.tunnelblick',
                '~/Library/LaunchAgents/net.tunnelblick.tunnelblick.LaunchAtLogin.plist',
                '~/Library/Preferences/net.tunnelblick.tunnelblick.plist',
              ]

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
