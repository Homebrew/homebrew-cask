cask 'zoho-mail' do
  version '1.1.2'
  sha256 '57194c54ce3450238fd4dbce4d629452968fc6ef239c8fa720f9553751626b13'

  # downloads.zohocdn.com/zmail-desktop/mac was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://downloads.zohocdn.com/zmail-desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
