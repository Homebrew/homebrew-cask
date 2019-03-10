cask 'zoho-mail' do
  version '1.0.11'
  sha256 '02738c978d43974e49c7bd794a6ffc51ed51862cd04472016ba558f21bffa4de'

  url "https://www.zoho.com/mail/desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
