cask 'torguard' do
  version '0.3.61'
  sha256 '06f97e48e64e480450129f0f19c85caebcec8a23357fc146a57637974f950458'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '8b37d07b567c32c6ed32564a3944345030441ced3ebadcbea21d48ecd8b9e202'
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
