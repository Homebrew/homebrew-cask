cask 'telegram' do
  version '3.2-104075'
  sha256 '28c16afb4500073ddfb6d835c9c5a6c276af9ff50a503e5759e62c0cb805d514'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '98c8f9d48f220460227fe66cc5743524f56e664fb9f9567587aca709deb8d20d'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
