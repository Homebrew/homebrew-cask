cask 'whale' do
  version '0.10.3'
  sha256 '38269aeade05854778e1bedc922d1d31f7e319e7bdb3133fc225023f8b8a97c5'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/whale/releases.atom',
          checkpoint: 'd2aa01d3f3971b4873cedce6f434cc7edb15bb941e15df9974f608d183ef607b'
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
