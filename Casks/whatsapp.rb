cask 'whatsapp' do
  version '0.2.9230'
  sha256 '116c0fe2398fd4763bfe97044f9a655e764abdd3703f5c57edcd7e672279e1de'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '414b8bc49ef7c7a815499bd1af8d87bd8fbcab9bc90918e3afd5206e78d44883'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  auto_updates true

  app 'WhatsApp.app'

  zap trash: [
               '~/Library/Application Support/WhatsApp',
               '~/Library/Application Support/WhatsApp.ShipIt',
               '~/Library/Caches/WhatsApp',
               '~/Library/Preferences/WhatsApp.plist',
               '~/Library/Preferences/WhatsApp-Helper.plist',
             ]
end
