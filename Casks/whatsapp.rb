cask 'whatsapp' do
  version '0.2.3703'
  sha256 'd3435921197efb004494d6b34ec9af60e2ffb1565bb633370ea1fd7de9934e01'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '09646589f8c45cd9ba7d0d05a0fa0535d51ac782d6f7cd88b4afa97ba373e59b'
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
