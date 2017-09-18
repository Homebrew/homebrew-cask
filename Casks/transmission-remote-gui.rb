cask 'transmission-remote-gui' do
  version '5.10.0'
  sha256 '2301f5d07816c24d0fda13c59a8dab3ddffdbeda494fe7a38cf9834b3b71b70e'

  url "https://github.com/leonsoft-kras/transmisson-remote-gui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/leonsoft-kras/transmisson-remote-gui/releases.atom',
          checkpoint: '4b61c23d7fe75d7e6fabad7adbf11cbb50d1c3b01c8857943e6522889cc9913f'
  name 'Transmission Remote GUI'
  homepage 'https://github.com/leonsoft-kras/transmisson-remote-gui'

  app 'Transmission Remote GUI.app'

  uninstall quit: 'com.transgui'

  zap delete: '~/Library/Saved Application State/com.transgui.savedState',
      trash:  [
                '~/.config/Transmission Remote GUI/',
                '~/Library/Preferences/com.transgui.plist',
              ]
end
