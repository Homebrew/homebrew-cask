cask 'telegram' do
  version :latest
  sha256 :no_check

  url 'https://osx.telegram.org/updates/telegram.dmg'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  app 'Telegram.app'
end
