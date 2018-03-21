cask 'torguard' do
  version '0.3.79'
  sha256 '3ba23ad4a1a3f442ff8014f2e224e26f688d39cf570fc2f7984dc46b1bcc689f'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: 'f56225a4de1d1ecd812ce9d0cb1921cd5a845ddc4c1b0dc417fc42b177c952a5'
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
