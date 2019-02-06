cask 'zoho-mail-desktop' do
  version '1.0.10'
  sha256 '9e5a08cd9bbf07e3ca07a7ce43e18764b22a022cdad7c749e6ef9baf3139f32b'

  url "https://www.zoho.com/mail/desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  name 'zoho-mail-desktop'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
