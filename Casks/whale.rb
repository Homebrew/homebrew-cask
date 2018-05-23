cask 'whale' do
  version '0.15.0'
  sha256 '0d976584673d5ae1a7240f5a4f6b0e2a970d2bbb890b2e22395d4242b2bb6407'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/whale/releases.atom',
          checkpoint: '304f94ed869d8e7bcda243d740f77e5e01b005297f08a64c76768b646ae2e290'
  name 'Whale'
  homepage 'https://github.com/1000ch/whale'

  app 'Whale.app'

  zap trash: [
               '~/Library/Application Support/Whale',
               '~/Library/Caches/net.1000ch.whale',
               '~/Library/Caches/net.1000ch.whale.ShipIt',
               '~/Library/Preferences/net.1000ch.whale.helper.plist',
               '~/Library/Preferences/net.1000ch.whale.plist',
               '~/Library/Saved Application State/net.1000ch.whale.savedState',
             ]
end
