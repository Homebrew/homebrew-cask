cask 'whatsapp' do
  version '0.2.777'
  sha256 '05c015f0ad7a51f62b341ce006827a7bc5c5962e8303859e13de3f49a59c6312'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'c434dd74d97e36a00ec4aab4c2e4cb04c2cb983f9ee922934c33c5f02d575580'
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
