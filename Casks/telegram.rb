cask 'telegram' do
  version '2.22-50247'
  sha256 '9b301d2963cafc4673d2956c069e7c4ad7286e4e6b6bb3e5314490cea89cf439'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '3449c4ddba2c2140f4e7614b26ca2e4a841a90083e0a5beda9e956a432783607'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
