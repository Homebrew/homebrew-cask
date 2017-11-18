cask 'torguard' do
  version '0.3.70'
  sha256 'c8107bd0c03ee9ecf76e4e391ab48eeb68f2d9eff7175e771cfd99ee340720d9'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: 'e243fe1dfbd59f7f6b33a524b4a849806efe997f7839304123b1bafe37ef1a5d'
  name 'TorGuard'
  homepage 'https://torguard.net/'

  pkg 'Install TorGuard.pkg'

  uninstall pkgutil: 'net.torguard.TorGuardDesktopQt'

  zap trash: [
               '~/Library/Preferences/net.torguard.TorGuard*.plist',
               '~/Library/Saved Application State/net.torguard.TorGuardDesktopQt.savedState',
             ]
end
