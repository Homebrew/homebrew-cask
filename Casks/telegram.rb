cask 'telegram' do
  version '2.16-47504'
  sha256 'ed268fafd134b40d23effa99f955cb42bb1c61d72ad72e52eb5e0dac20409f7e'

  # telegram.org was verified as official when first introduced to the cask
  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'http://osx.telegram.org/updates/versions.xml',
          checkpoint: '45ad0adce4c95efab3bfbaeb24b1e0986f5875556f438a7cddb806c1c563b3c6'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
