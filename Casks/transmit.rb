cask 'transmit' do
  version '5.6.4'
  sha256 '598c18142f7b5f99ab559619513a23cd5408508fa517a6c5898572a9b5c37a14'

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
