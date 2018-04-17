cask 'whatsapp' do
  version '0.2.8691'
  sha256 '9ec513088b9c668a2803a2711d84af49e83bca6754caee1539186d24ca60a15e'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '71ca0707fff073fd7b9d29ff7363ea9a12d2aa2941344f4454721bdfdcef80db'
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
