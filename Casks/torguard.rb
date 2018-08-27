cask 'torguard' do
  version '3.88.0'
  sha256 '1770ae00882ba73f23b9fd3999336858320dfa406ddf52d6bd9336bead40b939'

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
