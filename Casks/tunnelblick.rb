cask 'tunnelblick' do
  version '3.7.4b,4921'
  sha256 '3963a2588d1fcbfbc627a5c7b8ce0242c2b36dc4cd3fc1ae83f12dd32c0dfca8'

  # github.com/Tunnelblick/Tunnelblick/releases/download was verified as official when first introduced to the cask
  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.before_comma}/Tunnelblick_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast 'https://github.com/Tunnelblick/Tunnelblick/releases.atom',
          checkpoint: '3a0425f39e2aefa8d0b4112afc3a716acca2aefc96c70480d120c7f105c60efb'
  name 'Tunnelblick'
  homepage 'https://www.tunnelblick.net/'

  auto_updates true

  app 'Tunnelblick.app'

  uninstall_preflight do
    set_ownership "#{appdir}/Tunnelblick.app"
  end

  uninstall launchctl: [
                         'net.tunnelblick.tunnelblick.LaunchAtLogin',
                         'net.tunnelblick.tunnelblick.tunnelblickd',
                       ],
            quit:      'net.tunnelblick.tunnelblick'

  zap trash: [
               '~/Library/Application Support/Tunnelblick',
               '~/Library/Caches/net.tunnelblick.tunnelblick',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Tunnelblick*',
               '~/Library/Cookies/net.tunnelblick.tunnelblick.binarycookies',
               '~/Library/Preferences/net.tunnelblick.tunnelblick.plist',
               '/Library/Application Support/Tunnelblick',
             ]

  caveats <<~EOS
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
