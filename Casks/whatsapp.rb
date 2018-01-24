cask 'whatsapp' do
  version '0.2.8082'
  sha256 'ed3ed0b2c43e5bf0210b306e02e24876ac6b3b1b6375b66c7f6c996364517efd'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '319878f0507aec8f162ee38f3d276cdcee245311fb3f5c83af85ea85fb5ebc09'
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
