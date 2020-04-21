cask 'whatsapp' do
  version '0.4.2088'
  sha256 '8a4f5aad337ed94b08bc87e9b9ebff168b703be3dcd3de0469274c9d3241c326'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  auto_updates true

  app 'WhatsApp.app'

  zap trash: [
               '~/Library/Application Support/WhatsApp',
               '~/Library/Application Support/WhatsApp.ShipIt',
               '~/Library/Caches/WhatsApp',
               '~/Library/Caches/WhatsApp.ShipIt',
               '~/Library/Preferences/ByHost/WhatsApp.ShipIt.*.plist',
               '~/Library/Preferences/WhatsApp.plist',
               '~/Library/Preferences/WhatsApp-Helper.plist',
               '~/Library/Saved Application State/WhatsApp.savedState',
             ]
end
