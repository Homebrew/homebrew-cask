cask 'tunnelblick' do
  version '3.8.1,5400'
  sha256 'a619a1c01a33a8618fc2489a43241e95c828dcdb7f7c56cfc883dcbb22644693'

  # github.com/Tunnelblick/Tunnelblick was verified as official when first introduced to the cask
  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.before_comma}/Tunnelblick_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast 'https://github.com/Tunnelblick/Tunnelblick/releases.atom'
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
