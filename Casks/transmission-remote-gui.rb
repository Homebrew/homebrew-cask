cask 'transmission-remote-gui' do
  version '5.16.0'
  sha256 'e90fcb970186890d5a92d99cf37a7f24952a488bd9fa779098731c424bcdbb5c'

  url "https://github.com/transmission-remote-gui/transgui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/transmission-remote-gui/transgui/releases.atom'
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
