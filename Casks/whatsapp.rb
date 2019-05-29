cask 'whatsapp' do
  version '0.3.2848'
  sha256 'f8255e98b9b0a6574a25fa171cc79740f600ac8ad9b11290813ffa3d543e4715'

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
               '~/Library/Preferences/WhatsApp.plist',
               '~/Library/Preferences/WhatsApp-Helper.plist',
               '~/Library/Saved Application State/WhatsApp.savedState',
             ]
end
