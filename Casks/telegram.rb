cask 'telegram' do
  version '2.18-48753'
  sha256 'd7f3972fbf4e29b235097a4d4eb5fe771e1b92efa3f8641236d95f21c20c6d38'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'http://osx.telegram.org/updates/versions.xml',
          checkpoint: '20cbd154ce260d687d5974013b77c775ea333dfc205eaef82e9abd5c264c0162'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
