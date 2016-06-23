cask 'whatsapp' do
  version '0.2.936'
  sha256 'a0c8e2a875f1a4022f0d79d7c7cbaee6e21c6b2a50832b2e6aacc676890ba732'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'c434dd74d97e36a00ec4aab4c2e4cb04c2cb983f9ee922934c33c5f02d575580'
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
