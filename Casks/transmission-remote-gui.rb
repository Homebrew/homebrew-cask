cask 'transmission-remote-gui' do
  version '5.15.3'
  sha256 '04dd013200c0c34677411b2972f43251514c17db2b1bc888f502ee54fa150f37'

  url "https://github.com/transmission-remote-gui/transgui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/transmission-remote-gui/transgui/releases.atom',
          checkpoint: '65861990d1582bcd871d4510c886ff677c7aae248b1e225f47d3e1b6c8e62a6b'
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
