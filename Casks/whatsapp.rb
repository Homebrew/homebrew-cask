cask 'whatsapp' do
  version '0.2.3120'
  sha256 '7ff67c91b2b878d99eca6fb2099c310f7bcf0c31a1734a8e6e7e2b3503e1d8ae'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'bd2e69082bca01f426d311756fee747a0c147fce0e415db79cd51a573d764130'
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
