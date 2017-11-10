cask 'whatsapp' do
  version '0.2.6968'
  sha256 '3aa9086d9812d0cfa16b40a0316600544aeae66cb127df00db08a5d6576bf627'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '09458bb420be2cebb4292d3ac37375369bbf8b35e17ade27b9922be463ef9d6f'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  auto_updates true

  app 'WhatsApp.app'

  zap delete: '~/Library/Caches/WhatsApp',
      trash:  [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Preferences/WhatsApp.plist',
                '~/Library/Preferences/WhatsApp-Helper.plist',
              ]
end
