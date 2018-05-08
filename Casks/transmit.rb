cask 'transmit' do
  version '5.1.2'
  sha256 '0f82b3442f82975c3f718072f49596babc9f930d38e9c307c0cc5118214f3a75'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/",
          checkpoint: '7a9bd53898acd3af38f82f9c5069b406f9d7c697a0591430cf5cc4454bf6507f'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
