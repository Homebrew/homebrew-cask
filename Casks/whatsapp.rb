cask 'whatsapp' do
  version '0.2.5862'
  sha256 '375d6adcaef85836c05d73b2ddd5c6ca59c1d604a640a952206e58798610e6f0'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'c1851d7e819a1e3b81bbd74c73db3c0a1f83d82fc9388bffd5e27997cae8eef1'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  auto_updates true

  app 'WhatsApp.app'

  zap delete: [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Caches/WhatsApp',
                '~/Library/Preferences/WhatsApp.plist',
                '~/Library/Preferences/WhatsApp-Helper.plist',
              ]
end
