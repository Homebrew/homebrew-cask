cask 'tiles' do
  version :latest
  sha256 :no_check

  # updates.sempliva.com was verified as official when first introduced to the cask
  url 'https://updates.sempliva.com/tiles/Tiles-latest.dmg'
  name 'FreeMacSoft Tiles'
  homepage 'https://freemacsoft.net/tiles/'

  app 'Tiles.app'

  uninstall launchctl: [
                         'com.sempliva.TilesHelper',
                       ],
            quit:      [
                        'com.sempliva.Tiles',
                       ]

  zap trash: [
               '~/Library/Application Support/com.sempliva.Tiles',
               '~/Library/Caches/com.sempliva.Tiles',
               '~/Library/Preferences/com.semplive.Tiles.plist',
             ]
end
