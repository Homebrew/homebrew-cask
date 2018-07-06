cask 'whatsapp' do
  version '0.2.9998'
  sha256 'c05c7e3e7dda25fc07b71a748881df93f31dbdeec9973f4a1bf19fc59268cfa7'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

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
