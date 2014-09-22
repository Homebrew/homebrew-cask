class Transmit < Cask
  version '4.4.8'
  sha256 '07cd9c7a3ff8eea21658889d6179ce8cf411ae4cd22a585db665c7984d9f227d'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  homepage 'http://panic.com/transmit'

  app 'Transmit.app'
  zap :delete => [
                  '~/Library/Preferences/com.panic.Transmit.plist',
                  '~/Library/Application Support/Transmit',
                 ]
end
