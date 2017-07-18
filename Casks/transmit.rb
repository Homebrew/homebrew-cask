cask 'transmit' do
  version '5.0'
  sha256 '3858e700f3fb48f00182936119193c4b09af7f86e4090187414cd6d8306fbdc3'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}",
          checkpoint: '939ceb813a55471ec5a94183d50d9fbed9f2081cbfbda965b1399e9e7188e315'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
