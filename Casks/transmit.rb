cask 'transmit' do
  version '5.6.5'
  sha256 '39c16e724e8cc38a6638e812a35d4b6b1cc4cd4cbda628da0143a308dbfc4299'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/"
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
