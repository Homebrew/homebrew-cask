cask 'zoho-mail' do
  version '1.1.4'
  sha256 'dc725f40122ee8841e30e662a13da69da01aaabe8eafeeaa2d12431a74430166'

  # downloads.zohocdn.com/zmail-desktop/mac was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://downloads.zohocdn.com/zmail-desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
