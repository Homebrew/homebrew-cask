cask 'zoho-mail' do
  version '1.0.14'
  sha256 '39b269c727c397adad6a0c6b381aed5a52071ae4833826ff2579446168e29170'

  url "https://www.zoho.com/mail/desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast 'https://www.zoho.com/mail/desktop/artifacts.json'
  name 'Zoho Mail'
  homepage 'https://www.zoho.com/mail/desktop/'

  app 'Zoho Mail - Desktop.app'
end
