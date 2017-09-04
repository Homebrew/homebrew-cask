cask 'telegram' do
  version '3.2-104070'
  sha256 '8f1d1c0a6e6e4b937207d1386a3923b0bdda3fd30e491317e21bb17879d8dbd5'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '279f649bbe40ffc5260ba80bd3f7c595fa63d417539a5ec334a7e47dba91ef57'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
