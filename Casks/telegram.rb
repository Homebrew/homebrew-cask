cask 'telegram' do
  version '2.92-91700'
  sha256 'e4039991e0bc7aa29276d70a01423649439b30fd9a338a2fa9fe4f96d3450cea'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '3c1f0971cb334ae6b944fac8724d3e431b52965dcebde881939e5c91defb26f0'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true

  app 'Telegram.app'
end
