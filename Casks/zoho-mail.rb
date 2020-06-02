cask 'zoho-mail' do
  version '1.0.20'
  sha256 '96ead615b34f574b9fa591b6abbb469dbdf89c1635bc23aa63ad245722c5b1a7'

  # downloads.zohocdn.com/zmail-desktop/mac/ was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://downloads.zohocdn.com/zmail-desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
