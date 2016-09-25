cask 'telegram' do
  version '2.25-50903'
  sha256 '03ce3883d4ac10ae486e643a669c80c56918f5fe40e83ba23d19640a16289b2a'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '6c2195f8f7ebf2e8b245e7b1a50abda23919398ef1cd0b6c8896131ff82428ab'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
