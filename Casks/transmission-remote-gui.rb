cask 'transmission-remote-gui' do
  version '5.13.0'
  sha256 '6e91ab6e9a8c8d704fb38bdb6b37647f05635a2d75dd3a3738d5ddf5097fb712'

  url "https://github.com/transmission-remote-gui/transgui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/transmission-remote-gui/transgui/releases.atom',
          checkpoint: '07003f14d0c8962865be85459fe5acf625175db1a69c3ca1f27d851d186bf09c'
  name 'Transmission Remote GUI'
  homepage 'https://github.com/transmission-remote-gui/transgui'

  app 'Transmission Remote GUI.app'

  uninstall quit: 'com.transgui'

  zap trash: [
               '~/.config/Transmission Remote GUI/',
               '~/Library/Preferences/com.transgui.plist',
               '~/Library/Saved Application State/com.transgui.savedState',
             ]
end
