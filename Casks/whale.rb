cask 'whale' do
  version '0.8.0'
  sha256 '16e2f4527e419c50721e1dfdbe51bc5708ca460928c3516e95ddc63acd10c222'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/whale/releases.atom',
          checkpoint: '170ca2d590f62e383a64d66055d58d74145e2ac9bd7c4bb9ca53c91af08d4701'
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
