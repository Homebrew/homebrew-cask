cask 'transmit' do
  version '5.0.4'
  sha256 '60b9a34b336e6b634091c6d6670eed0ee28fbff87acf7a53354190f8cfcfee32'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}",
          checkpoint: 'dfaf1b0045811da2c019e5af68d7cb9c02ff1ed30275d26d369bdbe58fecc0f0'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
