cask 'transmit' do
  version '5.2.1'
  sha256 '028a9d934288af9b196c3bf8a8b650c948ccbfa055d2b6d451730b8846c0c954'

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
