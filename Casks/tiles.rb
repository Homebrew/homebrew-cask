cask 'tiles' do
  version '1.0.1,20190430233520'
  sha256 '65e630a26c74f49a879a13317aa7b874788dd14216feb677d9e578e4e45ef77a'

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
