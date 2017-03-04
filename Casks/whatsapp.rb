cask 'whatsapp' do
  version '0.2.3571'
  sha256 '11013674f030e060a80e05f72c371498502b3d0c5ffa407c8ffe3e9bc5e2b6dd'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'b4fd89dcb3bb5046bf785215db3c79391bc10e9946143ad35571fc1cd2cb021d'
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
