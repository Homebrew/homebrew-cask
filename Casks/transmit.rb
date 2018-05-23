cask 'transmit' do
  version '5.1.3'
  sha256 'c6e902207c584c07505dfe6772439b25a59d926b04495b68d32382226cdbc951'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/",
          checkpoint: '0172e12e2179ac7ef5dc37af9e70332b31b7f2a4463f52116bb8c5bce61374c8'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  auto_updates true

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
