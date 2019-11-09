cask 'zoho-mail' do
  version '1.0.17'
  sha256 '7470adcc126cd94a6973be5efc4821ae3f3bc4a073a100f799841cda6be3625d'

  # downloads.zohocdn.com/zmail-desktop/mac was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://www.zoho.com/mail/desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
