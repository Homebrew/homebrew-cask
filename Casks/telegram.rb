cask 'telegram' do
  version '2.92-91713'
  sha256 '19bb025863120007403817fd0c98ff8451b07e2c56d6e0081076c30d5e8a3b0b'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '41ce5767e24230d8da49c046816c67f5553b050543c3430ba369e7fac37afdf3'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
