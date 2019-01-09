cask 'zoho-mail-desktop' do
  version '1.0.9'
  sha256 '73adeda015a4940ac79eb052028bc34c28252e241e1a08ff5f789d955b54e4e6'

  url "https://www.zoho.com/mail/desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  name 'zoho-mail-desktop'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
