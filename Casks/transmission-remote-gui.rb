cask 'transmission-remote-gui' do
  version '5.9.0'
  sha256 '45ae5923ed0cb1299ebadf0f6f5ab55f874d250d6f2b8251ae1f8c6e75da8b9f'

  url "https://github.com/leonsoft-kras/transmisson-remote-gui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/leonsoft-kras/transmisson-remote-gui/releases.atom',
          checkpoint: '585cc3654641d52dcd11b68664320767cc8cab542ecd2d3f61bf68af6697c2a9'
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
