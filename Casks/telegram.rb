cask 'telegram' do
  version '2.26-51005'
  sha256 '76f8b4a989534b5720ac665a44242573e5b1e8a00863e20cf69e69dd12a2a6c3'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '77a07fbbe09f33a659ea0ca14d899c14fd88dfd17225c55289d64206090a7883'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'

  auto_updates true

  app 'Telegram.app'
end
