cask 'torguard' do
  version '0.3.69'
  sha256 '42c2f631b7a32c6c29c03b88ea9485b7229a790fc503027e8b3c73b2f45a83f7'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '1addc4cfbbd432b6dec49b6957798f68c875c3d0d81334b7f8a45b384af45043'
  name 'TorGuard'
  homepage 'https://torguard.net/'

  pkg 'Install TorGuard.pkg'

  uninstall pkgutil: 'net.torguard.TorGuardDesktopQt'

  zap delete: [
                '~/Library/Preferences/net.torguard.TorGuard*.plist',
                '~/Library/Saved Application State/net.torguard.TorGuardDesktopQt.savedState',
              ]
end
