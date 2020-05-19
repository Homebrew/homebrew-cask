cask 'tempo' do
  version '4.20.2'
  sha256 '70c3fe388808dfed83bb7bc24275d7e4d2e70bcadcdf92e1b44fd470e0d462f0'

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
