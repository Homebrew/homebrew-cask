cask 'whale' do
  version '1.3.0'
  sha256 '2e28460cef4cf1d8df6be24e4be6dc5e3c9e94b84aec02f0a1516218e087d8ac'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-#{version}.dmg"
  appcast 'https://github.com/1000ch/whale/releases.atom'
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
