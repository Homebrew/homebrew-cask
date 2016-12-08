cask 'whatsapp' do
  version '0.2.2478'
  sha256 '31a47143fe6d6d6f71e5f7cb2286b9663dda559f209abc6b73f751c8aca21065'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'dbdc84e0e1e8ac902a454ea8b1763db93c0cf9cbd04631c9f865cb4d57d2d08b'
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
