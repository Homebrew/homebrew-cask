cask 'whale' do
  version '1.2.0'
  sha256 '8b293e12970926c534b7752b6309788c49c4fcde5bbf988b4d22693a57f25261'

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
