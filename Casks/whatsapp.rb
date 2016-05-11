cask 'whatsapp' do
  version '0.2.684'
  sha256 '728e1761d81e5d84a3fa9bc5f63383780f2830c7b10103c5791ffeccf016b842'

  url 'https://web.whatsapp.com/desktop/mac/files/WhatsApp.zip'
  name 'WhatsApp Official'
  homepage 'https://www.whatsapp.com/'
  license :closed # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WhatsApp.app'
end
