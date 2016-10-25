cask 'telegram' do
  version '2.27-51120'
  sha256 '4fda51a83b90134ad28dc9f652bd421d4e78d82f6ed52b22874a7d9120fa1f76'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'be255033b99e0ea72d0d0ef8f2f8b326ec87e81688bd5b19405ba148eb83ccaa'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'

  auto_updates true

  app 'Telegram.app'
end
