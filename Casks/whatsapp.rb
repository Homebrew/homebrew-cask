cask 'whatsapp' do
  version '0.2.1880'
  sha256 '1f48d23ad16e068d5a8df60cccbb7b5b15e2dba74d33cd678590e261b268b928'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '1ecfe85f9dd8c59c79ba751466317315e61101fad6c91b57a607cf20d76f3d08'
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
