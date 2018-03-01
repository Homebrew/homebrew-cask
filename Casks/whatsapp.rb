cask 'whatsapp' do
  version '0.2.8361'
  sha256 'a1f47f0024f6a6fc1f01e574ecfa71ecf223728ac973378fbd0a3a3099c79fd8'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '98622fd5eb90583b1723e610e887d5d2f2b9475d361f9c698979863214c28e88'
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
