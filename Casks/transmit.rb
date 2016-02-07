cask 'transmit' do
  version '4.4.10'
  sha256 '9255bff3e337d5c93e867a553d3889cf97aeecae70304f468648384b1990a257'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  name 'Transmit'
  homepage 'https://panic.com/transmit'
  license :commercial

  app 'Transmit.app'

  zap delete: [
                '~/Library/Preferences/com.panic.Transmit.plist',
                '~/Library/Application Support/Transmit',
              ]
end
