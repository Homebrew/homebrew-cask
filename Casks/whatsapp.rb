cask 'whatsapp' do
  version '0.2.6424'
  sha256 'a5b58bbe475377bc42ae2ef641661ca6ef37cfb7b1855e56a0a55881f5eedc96'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'bc33c8de0caf113c719eec6b7d46a51cb322cbbba89e52fb0fd83527da03785e'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  auto_updates true

  app 'WhatsApp.app'

  zap delete: [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Caches/WhatsApp',
                '~/Library/Preferences/WhatsApp.plist',
                '~/Library/Preferences/WhatsApp-Helper.plist',
              ]
end
