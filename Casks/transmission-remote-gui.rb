cask 'transmission-remote-gui' do
  version '5.12.0'
  sha256 'af0fd073fe266d88bb0c6e7c4f3852d54ffc3f591616977ff97cce2bf4ca4037'

  url "https://github.com/transmission-remote-gui/transgui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/transmission-remote-gui/transgui/releases.atom',
          checkpoint: '08e0f3ecf8ab4840650e1a10a4fbf9f5fecd7583a2ff6c7ce8d9334b83eff5f8'
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
