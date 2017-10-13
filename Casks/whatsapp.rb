cask 'whatsapp' do
  version '0.2.6426'
  sha256 'b627184f20a8753ae7e27a6f28c9434ade1e494fe42a11e6d268d3138d3fc8c2'

  url 'https://web.whatsapp.com/desktop/mac/files/WhatsApp.dmg'
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'd53dc98316026dc25cab82eee7ec47a9cdcae158d60530971533c4ebb0d76862'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  auto_updates true

  app 'WhatsApp.app'

  zap delete: '~/Library/Caches/WhatsApp',
      trash:  [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Preferences/WhatsApp.plist',
                '~/Library/Preferences/WhatsApp-Helper.plist',
              ]
end
