cask 'telegram' do
  version '2.99.1-96967'
  sha256 '0946d59b9cdfd6d0ffc2035f8ff0ea5be299b81796dc1e2e0660f5517094871a'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '7be48a2d60abce2feadf334da2dbf6024eb1c37a206ca68d2a9fa8afcb8732d0'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
