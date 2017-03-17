cask 'telegram' do
  version '2.91-90072'
  sha256 '01ed53901dba0696eee09f688e53dfef6fc7728690b48f803eb145bda7537341'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '03c3982bc1b87fad4260d7a3ad79b54555871861662a234306cbf03d1ca9ce3a'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true

  app 'Telegram.app'
end
