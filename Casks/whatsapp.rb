cask 'whatsapp' do
  version '0.2.6967'
  sha256 '2b373db87b3cf1e0c6b47883365b7cbe46ebedec9226b96054c9bf47dccf8430'

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast 'https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64',
          checkpoint: '5be1fd07457f52aab5f19d6260fcc8bbce5cc834e22ee2ce8d94a0da0a4d8459'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com/'

  auto_updates true

  app 'WhatsApp.app'

  zap delete: '~/Library/Caches/WhatsApp',
      trash:  [
                '~/Library/Application Support/WhatsApp',
                '~/Library/Application Support/WhatsApp.ShipIt',
                '~/Library/Preferences/WhatsApp.plist',
                '~/Library/Preferences/WhatsApp-Helper.plist',
              ]
end
