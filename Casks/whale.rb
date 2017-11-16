cask 'whale' do
  version '0.12.0'
  sha256 'd2e4705229c58ceae8371591577b1e92863b9df9cbcfcf6b6bc5b157039cfa15'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/whale/releases.atom',
          checkpoint: '2f2a9c2e029f2a204b4bfd8064990cd122570d48cf7b6b31ff2fd90ece0a822c'
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
