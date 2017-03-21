cask 'telegram' do
  version '2.91-90444'
  sha256 'f5fb78350a9099c96a3306bccab8edc4c61c4a66cd67e7bab2357faa6125204e'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '300f3273a898608fb01522e21ba88def097b9144307c9e0b519d0adbd9e3e08e'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true

  app 'Telegram.app'
end
