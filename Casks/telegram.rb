cask 'telegram' do
  version '3.0-100026'
  sha256 'edc275b350f9a6634af22bb6cce694c7fe3219851c71caf037dadc5c699d2299'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '1b389b86702e5666ee303fd78d4bc94edc4d9c58b523c21149d6dd2a170fb72a'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
