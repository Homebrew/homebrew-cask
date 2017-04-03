cask 'transmit' do
  version '4.4.12'
  sha256 'b4fdc538d8727bbeb34f2c42b794895b9a8bd4666a9e798ddd05381e94694669'

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast 'https://panic.com/transmit/releasenotes.html',
          checkpoint: '6f0d5a3d469d4a444f181e477c39f0cd47aa79a8f1f4074ac1bc5a4cf294cf1e'
  name 'Transmit'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap delete: [
                '~/Library/Preferences/com.panic.Transmit.plist',
                '~/Library/Application Support/Transmit',
              ]
end
