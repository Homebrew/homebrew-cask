cask 'whatsapp' do
  version '0.2.6968'
  sha256 '3aa9086d9812d0cfa16b40a0316600544aeae66cb127df00db08a5d6576bf627'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '2ea3377a1dc9d694f6601845854e7a044101f8da3466024b773cecb1e128ac9e'
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
