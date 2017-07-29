cask 'telegram' do
  version '3.1.1-101770'
  sha256 'e9362eab45998b28d6d4946741ecc7652474d7ab002ead9552094f1d49a093af'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '7faa9ab246ce31cfbf8357e8dd80e733a33763658c4fdb523ddacbf9b9f34dfc'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
