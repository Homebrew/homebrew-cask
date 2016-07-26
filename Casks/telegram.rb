cask 'telegram' do
  version '2.18-48803'
  sha256 'c9dcf0c5b25e90d9dccbc3b47fc9f1c03cc18937ebb4a47e75a5c1c8227e17cc'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'http://osx.telegram.org/updates/versions.xml',
          checkpoint: 'f314d17ab2620e4595f67ffaaa708d6c93e385cc2b8c8ba5a92c6eb602644557'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
