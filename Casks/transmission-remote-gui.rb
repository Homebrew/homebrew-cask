cask 'transmission-remote-gui' do
  version '5.15.2'
  sha256 '56014943e1f070604b651b972ee754b9692e1d9993c7dd7edeff93e9b2492d26'

  url "https://github.com/transmission-remote-gui/transgui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/transmission-remote-gui/transgui/releases.atom',
          checkpoint: '11acace4862e1b33a3460a745c3f6c2d96297a877fe573b3419d415fafbf9ee0'
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
