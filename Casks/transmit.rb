class Transmit < Cask
  version '4.4.6'
  sha256 '55b4a6f9c178f82a55a370745ed22cea4ba92a471b4be7a31105f67d04d0290c'

  url 'https://www.panic.com/transmit/d/Transmit%204.4.6.zip'
  appcast 'http://www.panic.com/updates/update.php'
  homepage 'http://panic.com/transmit'

  app 'Transmit.app'
  zap :files => [
                 '~/Library/Preferences/com.panic.Transmit.plist',
                 '~/Library/Application Support/Transmit',
                ]
end
