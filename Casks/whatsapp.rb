cask 'whatsapp' do
  version '0.2.2732'
  sha256 'a8bdfa64a8eccb35f647c5b275ba4f47512dbdb4ee29e334a8641d4f919ab816'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '3d97eee446f4e56fa8b69b45396814a13c478e387d130a42cd13700123a26545'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  app 'WhatsApp.app'

  zap delete: [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Caches/WhatsApp',
                '~/Library/Preferences/WhatsApp.plist',
              ]
end
