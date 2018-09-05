cask 'transmission-remote-gui' do
  version '5.15.4'
  sha256 '8147234915703ab3a7fe4bb224891052fcf8856b0b1793efeabb0210107e27f1'

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
