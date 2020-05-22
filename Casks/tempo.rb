cask 'tempo' do
  version '4.20.4'
  sha256 '379d57d0b009a53989dd595cd67c705c742ede346570e57c7071058d45b4e1df'

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
