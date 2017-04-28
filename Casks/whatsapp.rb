cask 'whatsapp' do
  version '0.2.4238'
  sha256 '882cef96febb3756b1af32cd8568643989c04b260eeeb62e2b17ceee172d923e'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'e9b28780b3aae614a21b24f76008d1a3124f4fce2d39f6a9d01cd1bc81c13820'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  app 'WhatsApp.app'

  zap delete: [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Caches/WhatsApp',
                '~/Library/Preferences/WhatsApp.plist',
                '~/Library/Preferences/WhatsApp-Helper.plist',
              ]
end
