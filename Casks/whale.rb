cask 'whale' do
  version '0.7.0'
  sha256 'daf56f0211916041b8a83950571e492303f33f97c98b31c0b5286d4412d96465'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/whale/releases.atom',
          checkpoint: 'a24eaea022aab78a11e83b8b4f0db850eb85e662dbef6870eb2df709dbafcaba'
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
