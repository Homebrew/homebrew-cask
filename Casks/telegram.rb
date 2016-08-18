cask 'telegram' do
  version '2.21-50021'
  sha256 'a9869514be66a43fe22896e3ae8b5d796d576bcf630b2109da77132ee1839dd7'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '5bb485c0c484ba74af88c5fbda72f5be3b8401224823088ac48d9a565ced208e'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
