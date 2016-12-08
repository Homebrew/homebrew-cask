cask 'torguard' do
  version '0.3.56'
  sha256 'c690049b491797e7c4581e2e0ec46f405012cdf3e40dbdcb9af84d48f0130e4f'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '34aa55c736deead09779382dc667ae8d1002fa1ef2259828778a3946a426f4cb'
  name 'TorGuard'
  homepage 'https://torguard.net/'

  pkg 'Install TorGuard.pkg'

  uninstall pkgutil: 'net.torguard.TorGuardDesktopQt',
            delete:  '/Applications/TorGuard.app'

  zap delete: [
                '~/Library/Preferences/net.torguard.TorGuard*.plist',
                '~/Library/Saved Application State/net.torguard.TorGuardDesktopQt.savedState',
              ]
end
