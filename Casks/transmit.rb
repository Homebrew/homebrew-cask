cask 'transmit' do
  version '5.6.3'
  sha256 '7c579c03dbd61ea8dc2eb55021a943dd0145397db5a5976b01c968994fd52892'

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
