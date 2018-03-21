cask 'tunnelblick' do
  version '3.7.5,5010'
  sha256 'd085fefadb49a2ff751804560ee26ed3bfac361f4595da1b547b811aa3ef8ed5'

  # github.com/Tunnelblick/Tunnelblick/releases/download was verified as official when first introduced to the cask
  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.before_comma}/Tunnelblick_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast 'https://github.com/Tunnelblick/Tunnelblick/releases.atom',
          checkpoint: '2ccf3cbdbaa130cd6c324956dcbf8d55c4601149281ed847685ee8ff3fedcba2'
  name 'Tunnelblick'
  homepage 'https://www.tunnelblick.net/'
  gpg "#{url}.asc", key_id: '76df975a1c5642774fb09868ff5fd80e6bb9367e'

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
