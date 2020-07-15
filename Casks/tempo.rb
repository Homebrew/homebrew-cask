cask 'tempo' do
  version '4.20.8'
  sha256 '73f6538ff2a1260c49d0382a38f472bdbbc08b0ee8df910d52d899efddfac804'

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
