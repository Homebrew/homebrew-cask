cask 'telegram' do
  version '2.92-91700'
  sha256 'e4039991e0bc7aa29276d70a01423649439b30fd9a338a2fa9fe4f96d3450cea'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '84720ca5be5778990d90e1667d1df17ac2ff3a83b6a8a109d34228722636cb1b'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
