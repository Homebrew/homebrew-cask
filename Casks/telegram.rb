cask 'telegram' do
  version '3.2-104084'
  sha256 '8c812810336308f73d59c4e4e93faa98ef47949dba7f9989dc48b5c2b141e711'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '81655cd46def358467ee7e7cb1a8e9ab27d672177f6be4dbc0012dad95d97d49'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
