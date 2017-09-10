cask 'telegram' do
  version '3.2.1-104303'
  sha256 '760155e57f75ace1d9e098cd0b9ec779de9865e0452c755c594cbe50b80dacbf'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '57f9815196a577f164e28a05a046b3b4fc5a16bcbc68dd9f5c30956e37f99ae0'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
