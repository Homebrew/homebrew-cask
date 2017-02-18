cask 'whale' do
  version '0.7.2'
  sha256 '69b56b34e5649c1e1e3d75f8c7c5ca1ff23aad2e9dd58a005696b1aa72397395'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/whale/releases.atom',
          checkpoint: 'afd1a2ba56f4cf5f0b2febe5f900334135f36e2af252f80a4cdc08fbdcc252cc'
  name 'Whale'
  homepage 'https://github.com/1000ch/whale'

  app 'Whale.app'

  zap delete: [
                '~/Library/Application Support/Whale',
                '~/Library/Caches/net.1000ch.whale',
                '~/Library/Caches/net.1000ch.whale.ShipIt',
                '~/Library/Preferences/net.1000ch.whale.helper.plist',
                '~/Library/Preferences/net.1000ch.whale.plist',
                '~/Library/Saved Application State/net.1000ch.whale.savedState',
              ]
end
