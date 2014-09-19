class Transmit < Cask
  version '4.4.7'
  sha256 '27cc53de5195ce54501cdc8acbb9bed34ac4ffc20dd9aa3744985e4d06e3ee87'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  homepage 'http://panic.com/transmit'

  app 'Transmit.app'
  zap :delete => [
                  '~/Library/Preferences/com.panic.Transmit.plist',
                  '~/Library/Application Support/Transmit',
                 ]
end
