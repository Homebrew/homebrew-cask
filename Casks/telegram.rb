cask 'telegram' do
  version '2.25-50904'
  sha256 '219e173bb9c9eb9c161abcfee8441d1cd2090217b000478dc085156c4bf0b4d6'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '0ea0b2d4724b0f30576218a8b7b3ba789fc47ff29640f67f5024ee84acbd14b3'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
