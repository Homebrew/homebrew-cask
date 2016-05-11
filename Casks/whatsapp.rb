cask 'whatsapp' do
  version :latest
  sha256 :no_check

  url 'https://web.whatsapp.com/desktop/mac/files/WhatsApp.zip'
  name 'WhatsApp'
  homepage 'https://www.whatsapp.com'
  license :commercial

  app 'WhatsApp.app'
end
