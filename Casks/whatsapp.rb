cask 'whatsapp' do
  version '0.3.4375'
  sha256 '4d9eaf902bf5a51648923eab8e894ab5e19f7847fa85c74ffb8b380e990b3b55'

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
