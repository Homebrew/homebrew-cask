cask 'texmacs' do
  version '1.99.5'
  sha256 '1e753a68bc0dd3dc6d8b5bfe1a0b4a7346408eeae8c76bf60609026c20b7be75'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'
  license :gpl

  app "TeXmacs-#{version}.app"
  binary "#{appdir}/TeXmacs-1.99.5.app/Contents/MacOS/TeXmacs", target: 'texmacs'

  zap delete: '~/.TeXmacs'
end
