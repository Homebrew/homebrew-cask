cask 'zoho-mail' do
  version '1.1.9'
  sha256 'abcab0c3711cdf108286631836b11f0921fa63901f742400992ba6d41264bad0'

  # downloads.zohocdn.com/zmail-desktop/mac/ was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://downloads.zohocdn.com/zmail-desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
