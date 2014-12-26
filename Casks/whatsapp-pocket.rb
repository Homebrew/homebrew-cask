cask :v1 => 'whatsapp-pocket' do
  version :latest
  sha256 :no_check

  url 'http://www.fireebok.com/product/WhatsApp_Pocket_Mac.dmg'
  homepage 'http://www.fireebok.com/whatsapp-pocket.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WhatsApp Pocket.app'
end
