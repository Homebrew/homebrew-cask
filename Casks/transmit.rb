cask 'transmit' do
  version '5.1.4'
  sha256 '15a89e738891554b853d24726d4d11f0b734f32a2423b8e3119446c3349114b2'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/",
          checkpoint: '90ea374a9ed0328a23056d1ccca817159e7130aaffb049b8a43f69f8986b1486'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  auto_updates true

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
