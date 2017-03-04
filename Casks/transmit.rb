cask 'transmit' do
  version '4.4.10'
  sha256 '9255bff3e337d5c93e867a553d3889cf97aeecae70304f468648384b1990a257'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast 'https://panic.com/transmit/releasenotes.html',
          checkpoint: '04eef80fc4505527daed3b15ab68abaf14f3a6f77e8fa1e137ff541f0fec7439'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap delete: [
                '~/Library/Preferences/com.panic.Transmit.plist',
                '~/Library/Application Support/Transmit',
              ]
end
