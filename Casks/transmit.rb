cask 'transmit' do
  version '5.0.1'
  sha256 '0ca64381d9b2e6970a7e43340ad53d90fc1ec8eb0f6e354d27e307d3dd9b957f'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}",
          checkpoint: '2e117f0d3f16d822f081af54d85db24ac224c6ed4f9951d135f4e5a44b13a88d'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
