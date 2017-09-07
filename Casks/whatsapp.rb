cask 'whatsapp' do
  version '0.2.5863'
  sha256 '1f6f7a2cd93ec1ae71d8a1e12b0f6bf698263de3d64767f762ed2fc788869592'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: 'b52e065acd795ced7bba8401c695a17997e94dd49ca5fcf92f96d1dce773e1e0'
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
