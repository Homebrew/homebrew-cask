cask 'telegram' do
  version '2.91-90980'
  sha256 '9a1e4f8380dca248f45306a75b8695e4d885ee8412b04231e9933198d4e353ff'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'b005735a9fe4921020ca0655a50507e1cf9fa984138a6745ddb4afb6d7c7ae9b'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true

  app 'Telegram.app'
end
