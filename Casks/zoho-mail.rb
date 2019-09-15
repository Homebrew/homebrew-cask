cask 'zoho-mail' do
  version '1.0.16'
  sha256 '70a9408a4e20596ccaa933196c64edd06d1edab8c70a9d01249f3a8ef4984f3e'

  # downloads.zohocdn.com/zmail-desktop/mac was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://www.zoho.com/mail/desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
