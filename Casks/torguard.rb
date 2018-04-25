cask 'torguard' do
  version '0.3.83'
  sha256 'c7ce58c1e55cb3748e5c8951abc3cccfad148c2bb83445ff9c616b01c6742ea3'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: 'a134e08fc113a961b5ea2b5ec2af3636c1625611a6c380f22b63ee500810c04f'
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
