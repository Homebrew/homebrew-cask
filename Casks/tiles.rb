cask 'tiles' do
  version '1.0.3,6da1f344'
  sha256 '07dce874aaf7c014916507b2f9f694da4fcecbb2e5c754612e0f301216b78604'

  url "https://updates.sempliva.com/tiles/Tiles-#{version.after_comma}.dmg"
  appcast 'https://updates.sempliva.com/tiles/updates.xml',
          configuration: version.after_comma
  name 'Sempliva Tiles'
  homepage 'https://www.sempliva.com/tiles/'

  app 'Tiles.app'

  uninstall launchctl: 'com.sempliva.TilesHelper',
            quit:      'com.sempliva.Tiles'

  zap trash: [
               '~/Library/Application Support/com.sempliva.Tiles',
               '~/Library/Caches/com.sempliva.Tiles',
               '~/Library/Preferences/com.semplive.Tiles.plist',
             ]
end
