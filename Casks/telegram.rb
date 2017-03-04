cask 'telegram' do
  version '2.30-51442'
  sha256 'db28d47e8337eb417e4c75e6cc1650ccd3f34cd0ed6cffcebafd489f88336cac'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '3c1f0971cb334ae6b944fac8724d3e431b52965dcebde881939e5c91defb26f0'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true

  app 'Telegram.app'
end
