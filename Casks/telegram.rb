cask 'telegram' do
  version '2.19-48910'
  sha256 'b59451effb2c0dbd599e03f21f27d8b31786b6f532ba9a4cbb1cf663f45ccb04'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '2e48e6b684fac637e997175a549dac1c214ddd11c4251f7213258b1d2476506c'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
