cask 'whale' do
  version '0.17.0'
  sha256 '23d053857c763f23630f9404b636a9ffd425fead1aadcecc20fc1d6d65833ad6'

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
