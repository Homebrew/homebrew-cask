cask 'whatsapp' do
  version '0.2.6426'
  sha256 'b627184f20a8753ae7e27a6f28c9434ade1e494fe42a11e6d268d3138d3fc8c2'

  url 'https://web.whatsapp.com/desktop/mac/files/WhatsApp.dmg'
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'd5d17500d8071b2bba1c2711e41e323fa33732d004139e8e28bbc4cf40f2f9ac'
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
