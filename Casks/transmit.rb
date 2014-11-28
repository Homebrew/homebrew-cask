cask :v1 => 'transmit' do
  version '4.4.8'
  sha256 '3547a5e8baabffd18c4e21c766362cd4295d878d391ce48bb8f8f4d6eabd9ef9'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  homepage 'http://panic.com/transmit'
  license :unknown

  app 'Transmit.app'

  zap :delete => [
                  '~/Library/Preferences/com.panic.Transmit.plist',
                  '~/Library/Application Support/Transmit',
                 ]
end
