cask 'whatsapp' do
  version :latest
  sha256 :no_check

  url 'https://web.whatsapp.com/desktop/mac/files/WhatsApp.zip'
  name 'WhatsApp for OS X'
  homepage 'https://www.whatsapp.com'
  license :gratis

  app 'WhatsApp.app'
end
