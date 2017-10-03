cask 'whatsapp' do
  version '0.2.6424'
  sha256 'ab2df2067986409901cdaa8dbe59b003fcf623a18c9423e7ccdb15876c85863e'

  url 'https://web.whatsapp.com/desktop/mac/files/WhatsApp.dmg'
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'bc33c8de0caf113c719eec6b7d46a51cb322cbbba89e52fb0fd83527da03785e'
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
