cask 'torguard' do
  version '0.3.59'
  sha256 '6ff9f38701f0a3377c5c82de98f6a1ea0fb773e18513bea2f8bf5150f9484838'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: 'cdaa97309ab201ab7269b44a632729ae270110af3b42bdcc16daaa33a8a59d58'
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
