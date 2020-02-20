cask 'transmit' do
  version '5.6.2'
  sha256 'ef1fc862432a2889c03a614a8cb411c5fd56f6eecddb4708e104956b8189c8ca'

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
