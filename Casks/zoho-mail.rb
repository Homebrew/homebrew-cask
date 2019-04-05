cask 'zoho-mail' do
  version '1.0.12'
  sha256 '47e98f1ec76cf9ed8cd397464068824bf6b9ac0c88adf83bc7ef1c4ccd149d4f'

  url "https://www.zoho.com/mail/desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://www.zoho.com/mail/desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
