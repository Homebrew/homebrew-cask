cask 'transmit' do
  version '5.0.5'
  sha256 '9c33c66c3d8f06b1b21780f0be4d10e37f64d738bcb494dab4887d48e60306b1'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/",
          checkpoint: '50b744c230ed87ac93b007186cc3b85e3a33d68aa032f62000423fbde49d5691'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
