cask 'telegram' do
  version '2.91-90980'
  sha256 '595cdd2a1b220b059dcf67038961560ab57baef48be120fd6c6ae6d848303a64'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '9c605a0e99c8b79d0e789b1b82472090899455a64b24b9d8c3fac2cface6bcb4'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
