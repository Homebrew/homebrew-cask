cask 'veonim' do
  version '0.13.5'
  sha256 '43aaa40328a5aefe5e2f35f341da30e4dcd1fec1ae6554d650a2d463ef426d9b'

  url "https://github.com/veonim/veonim/releases/download/#{version}/veonim-#{version}-mac.zip"
  appcast 'https://github.com/veonim/veonim/releases.atom'
  name 'veonim'
  homepage 'https://github.com/veonim/veonim'

  app 'veonim.app'
end
