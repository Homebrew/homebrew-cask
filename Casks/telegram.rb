cask 'telegram' do
  version '2.16-47508'
  sha256 '5ffbd2f76054fc47aafa6f2596ef9c6a85a69412a3a1f227f789b1832e7518d5'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'http://osx.telegram.org/updates/versions.xml',
          checkpoint: '07caec5ebbe1b7081cb2e873cb5321d6f736b6ecbe7421968ba2f69745ac1a6e'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
