cask 'torguard' do
  version '3.86.0'
  sha256 '0d5bd11f1da9264b31ca363e5fe64f8ee1178b7fde4ba03635734e5b9a8b12d6'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256'
  name 'TorGuard'
  homepage 'https://torguard.net/'

  pkg 'Install TorGuard.pkg'

  uninstall pkgutil: 'net.torguard.TorGuardDesktopQt',
            delete:  '/Applications/TorGuard.app'

  zap trash: [
               '~/Library/Preferences/net.torguard.TorGuard*.plist',
               '~/Library/Saved Application State/net.torguard.TorGuardDesktopQt.savedState',
             ]
end
