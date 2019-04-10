cask 'zoho-mail' do
  version '1.0.13'
  sha256 'cc88a4187405492d5687681b46255cad4b72e02fc6d1116a14a3e74ebf727671'

  url "https://www.zoho.com/mail/desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://www.zoho.com/mail/desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
