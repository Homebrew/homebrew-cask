cask 'whatsapp' do
  version '0.2.1061'
  sha256 'e73e64c2d91b5de46b31429004878e3a7f24599073b27655290b075d3f4fbe13'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '39bbc795dd9d357ae42a8b15f8ee747e19f1b50fce86e36f2e7e260a9d80f7fd'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'
  license :gratis

  app 'WhatsApp.app'

  zap delete: [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Caches/WhatsApp',
                '~/Library/Preferences/WhatsApp.plist',
              ]
end
