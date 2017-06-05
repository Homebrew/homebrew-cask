cask 'telegram' do
  version '2.99.1-96967'
  sha256 '5b19c45c8dea363711680a3537d94290f83b2cb6b2bb538e691893d4431b13e9'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'a2e1351423374ca6fb1f82d94b4797f640cc8f210926dd007ce636d47f5e89ff'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
