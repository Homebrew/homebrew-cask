cask 'transmission-remote-gui' do
  version '5.15.0'
  sha256 '91da842ad8701bb253e999ca7614b9a2d5483d1d85120cd9d18cdceb6e42f26b'

  url "https://github.com/transmission-remote-gui/transgui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/transmission-remote-gui/transgui/releases.atom',
          checkpoint: '46c3417c57b7cb424b770f2dd22a8e73cbbb3adaf31b6d5728aeafa1101eb402'
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
