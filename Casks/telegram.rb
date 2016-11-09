cask 'telegram' do
  version '2.28-51237'
  sha256 'e2efb5757cbd7fa535c5854e76af4cec5e5931bea3f2115562c9f7c30e630884'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '2a9f30a4be374f6515d4c13bf2122254b01e72f4c50436691133c6d1c6f1a6b3'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'

  auto_updates true

  app 'Telegram.app'
end
