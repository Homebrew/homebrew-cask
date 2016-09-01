cask 'whatsapp' do
  version '0.2.1455'
  sha256 'ef24b632945439529b687ac875c0c50c89c4dee0dc9aaaf7e1f73c5f2a2f1833'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '854fc587ed285baf19a01e0c02a7a5f6854308732a0022ae238a5d1d4bb1855a'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'
  license :gratis

  app 'WhatsApp.app'

  zap delete: [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Caches/WhatsApp',
                '~/Library/Preferences/WhatsApp.plist',
              ]
end
