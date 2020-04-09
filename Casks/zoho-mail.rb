cask 'zoho-mail' do
  version '1.1.5'
  sha256 'dc1f1b9cbb556e9dda51d08820d702cc4aa1cc50c3678166949606fe0de28172'

  # downloads.zohocdn.com/zmail-desktop/mac was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://downloads.zohocdn.com/zmail-desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
