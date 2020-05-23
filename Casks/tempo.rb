cask 'tempo' do
  version '4.20.5'
  sha256 '459dbaa7016bce1d8e266c549f8476aa3d59b16e7c98ca2a9fc36aa20b431756'

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
