cask 'whale' do
  version '1.1.1'
  sha256 'c698dfabffac857f03da5a3f095a5007f032e4a58693975bf741fe071ff1cde0'

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
