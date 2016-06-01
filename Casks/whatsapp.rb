cask 'whatsapp' do
  version '0.2.684'
  sha256 '728e1761d81e5d84a3fa9bc5f63383780f2830c7b10103c5791ffeccf016b842'

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
