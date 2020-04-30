cask 'tempo' do
  version '4.20.0'
  sha256 '3c77aa9850ba8dbc9748366d02b756e8cce38548009ca44c2119aba217520035'

  url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  appcast 'https://download.yourtempo.co/release/latest-mac.yml'
  name 'Tempo'
  homepage 'https://www.yourtempo.co/'

  auto_updates true

  app 'Tempo.app'

  zap trash: [
               '~/Library/Application Support/Tempo',
               '~/Library/Logs/Tempo',
               '~/Library/Preferences/com.founders.mial.plist',
               '~/Library/Saved Application State/com.founders.mial.savedState',
             ]
end
