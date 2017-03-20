cask 'telegram' do
  version '2.91-90199'
  sha256 '4f1806e7c72c6d2494612ae0972b348e85b8caeb5ee9406846a4d6af84096b9d'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'cff68418229da26d5f6bbd5fe46764e4878fe183c4a4d02eedb77feabeba0a3b'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true

  app 'Telegram.app'
end
