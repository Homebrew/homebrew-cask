cask 'transmit' do
  version '5.1.1'
  sha256 '57b3990710267152b06e28880fa494fde29ce6eeb33bdd79e23dbd799add199b'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/",
          checkpoint: 'fcd82b1dd72648f32e829de33c91c7959fbe2122f1c64079ffb49f8312fcc4e8'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
