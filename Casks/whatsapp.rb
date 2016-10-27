cask 'whatsapp' do
  version '0.2.2243'
  sha256 '10a1c86029fb6081baba1c951a27040591385d22d9dc916c9e5bb06de660ba4c'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '835589634849599c923ab0e03e32fa39ff6ee177b8a07c2aae32e1cc2e518544'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  app 'WhatsApp.app'

  zap delete: [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Caches/WhatsApp',
                '~/Library/Preferences/WhatsApp.plist',
              ]
end
