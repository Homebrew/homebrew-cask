cask 'texmacs' do
  version '1.99.5'
  sha256 '6f560861a25439a3a4e314098ed096a3416581eab90ace89c7055e2eb34f7e2e'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap delete: '~/.TeXmacs'
end
