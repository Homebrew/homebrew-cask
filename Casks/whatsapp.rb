cask 'whatsapp' do
  version '0.2.8000'
  sha256 '2af230545e4196c04f70cb3626057d50057d84ae6e8c7c41a9586ca349842545'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '719c84872c01a801598b9f46167c789a76798bd9e7872a47b8d9ab4e385a2adf'
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
