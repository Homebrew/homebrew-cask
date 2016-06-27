cask 'telegram' do
  version '2.16-47508'
  sha256 '395911b884c65259e596c7ef7b6fee278578231279cb0e71f22dc5788b0a850b'

  # telegram.org was verified as official when first introduced to the cask
  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'http://osx.telegram.org/updates/versions.xml',
          checkpoint: '90b88fae996b8f22c2df063127b60547643044dfdc84b7f775d4e171f5618718'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
