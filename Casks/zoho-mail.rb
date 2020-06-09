cask 'zoho-mail' do
  version '1.1.11'
  sha256 '0c1f240ebb81f6c81f49751bd626d14f9a1b0c1b58df52fb1955839095161a7f'

  # downloads.zohocdn.com/zmail-desktop/mac/ was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://downloads.zohocdn.com/zmail-desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
