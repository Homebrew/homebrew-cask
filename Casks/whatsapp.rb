cask 'whatsapp' do
  version '0.2.777'
  sha256 '05c015f0ad7a51f62b341ce006827a7bc5c5962e8303859e13de3f49a59c6312'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'b2e9cfbbe2e5e492553e5fdd8d8415ed0911d981d21fbced08152269b9cb43c4'
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
