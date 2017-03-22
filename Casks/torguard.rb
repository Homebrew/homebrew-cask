cask 'torguard' do
  version '0.3.62'
  sha256 'ae281721dcd40712242d5af9fcb79499befd2d0974c17538912c8655d3e5fea4'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '4d96d9074f82fb86812fb585161b7cab6019701941fa78bceb8b5ac58d9f66ad'
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
