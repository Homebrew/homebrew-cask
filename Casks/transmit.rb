cask 'transmit' do
  version '5.0.3'
  sha256 'b4a38fac2c7ae3c39a4aacf6f6029cdbe3a4f5775f1d594812359c168e02e1f7'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}",
          checkpoint: 'bca72152497f631aea8bd4bd44a6f792cc45cbf167f497f31b8a2eac8405a25a'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
