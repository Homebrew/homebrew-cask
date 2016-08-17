cask 'telegram' do
  version '2.21-50010'
  sha256 'dc4e2831df6ec401b9394de1c23ec8dddfcbdeb664afc1a8ecae46ceac7809ab'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'a2be2d65c6dd550f46d17980e90e47d9d11729c3efd2425c59872527b97e946c'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
