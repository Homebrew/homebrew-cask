cask 'transmission-remote-gui' do
  version '5.11.0'
  sha256 'e62776e7503624b12282e7efaa4d8bca9378495ba747525afce36ab752a88bb9'

  url "https://github.com/leonsoft-kras/transmisson-remote-gui/releases/download/v#{version}/transgui-#{version}.dmg"
  appcast 'https://github.com/leonsoft-kras/transmisson-remote-gui/releases.atom',
          checkpoint: 'e3a2a5f0c6f035a94e149c99cbad4f6415cad6a9466e4113d00d663e4b6e341f'
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
