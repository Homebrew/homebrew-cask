cask 'telegram' do
  version '2.21-50000'
  sha256 'd3f50a9c7453527e02c1f145adbfdb81cdb14967bbe3d0c0de7ecbbe87b02d7d'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'bd9cff5ecabd6d28a4e087e56a79ff079fa3c0b86070b71274e438c9ce55a61f'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
