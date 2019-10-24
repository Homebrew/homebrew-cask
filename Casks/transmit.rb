cask 'transmit' do
  version '5.6.1'
  sha256 '0021a4ee751f7b1b91007c690241fd2334a5334e309069a2d8aaea93b7b08eed'

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
