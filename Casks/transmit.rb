cask 'transmit' do
  version '5.2.4'
  sha256 'b2374738db58a9872e385427ec2aaf139f80fad689d2b81c6de3ffb9a0acc598'

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
