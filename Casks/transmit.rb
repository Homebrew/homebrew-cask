cask 'transmit' do
  version '5.1.5'
  sha256 'b73c25bfe2290ad50dacf684a58a38081d3c6861921cce1626f4a464a065cc84'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/"
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  auto_updates true

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
