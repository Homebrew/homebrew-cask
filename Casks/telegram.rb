cask 'telegram' do
  version '2.91-90980'
  sha256 '9a1e4f8380dca248f45306a75b8695e4d885ee8412b04231e9933198d4e353ff'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '351b7783b7053fa103b61895f3962ce55671d69654b2c1b45d60d94bd9e9bfb4'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
