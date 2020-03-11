cask 'zoho-mail' do
  version '1.1.1'
  sha256 'b29f3dfd6b8f0427319dca68ef9c9033e9b8a817fc9cd7da04ba5c024e7745aa'

  # downloads.zohocdn.com/zmail-desktop/mac was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://downloads.zohocdn.com/zmail-desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
