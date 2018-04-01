cask 'transmission-remote-gui' do
  version '5.14.0'
  sha256 '6213845c24243cdd24bef5010fb65a63244899be84ed73158874c32eb9f88854'

  url "https://github.com/transmission-remote-gui/transgui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/transmission-remote-gui/transgui/releases.atom',
          checkpoint: 'e83a537a586f875e6a0cb62b43477aef5a6e492732e77207c3b9fc12d9ed3ae1'
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
