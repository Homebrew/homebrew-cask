cask 'torguard' do
  version '0.3.78'
  sha256 '69480ae4aced2af826276ff67ab5b57a084bae985de11aeb166e1f76f1594524'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '55da4751d30fa6e76140f8b82ad92729e430b1e56aab2d7e09627f7ab6888372'
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
