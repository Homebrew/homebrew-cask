cask :v1 => 'unofficialwhatsapp' do
  version '1.1.0'
  sha256 '6b91701c3c980dfbb1ea7213f880767bcc04e681813c6c339f6212e4db49d588'

  url "https://github.com/Aluxian/WhatsApp-Desktop/releases/download/v#{version}/UnofficialWhatsApp.dmg"
  appcast 'https://github.com/Aluxian/WhatsApp-Desktop/releases.atom'
  name 'Unofficial WhatsApp for Desktop'
  homepage 'https://github.com/Aluxian/WhatsApp-Desktop'
  license :mit

  app 'UnofficialWhatsApp.app'

  zap :delete => [
                  '~/Library/Preferences/com.aluxian.whatsappfordesktop.plist',
                  '~/Library/Application Support/UnofficialWhatsApp/',
                  '~/Library/Saved Application State/com.aluxian.whatsappfordesktop.savedState/'
                 ]
end
