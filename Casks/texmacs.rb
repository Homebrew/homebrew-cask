cask 'texmacs' do
  version '1.99.5'
  sha256 '6f560861a25439a3a4e314098ed096a3416581eab90ace89c7055e2eb34f7e2e'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'http://www.texmacs.org/tmweb/download/macosx.en.html',
          checkpoint: '7e207b62277a2f1777c40e2d1c2405a5cb58718ad79a1ba6424a8291207a708c'
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap delete: '~/.TeXmacs'
end
