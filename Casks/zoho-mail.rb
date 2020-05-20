cask 'zoho-mail' do
  version '1.1.10'
  sha256 'cfed176a979dbfa9ec75a8043031f97b07407ff4e2966ddbdb6594db5925f1f6'

  # downloads.zohocdn.com/zmail-desktop/mac/ was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://downloads.zohocdn.com/zmail-desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
