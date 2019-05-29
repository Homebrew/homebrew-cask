cask 'texmacs' do
  version '1.99.9'
  sha256 '39db391ab8e2731525122e7ebaef1b7c4f543132503e64acec094b5440caf391'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'http://www.texmacs.org/tmweb/download/macosx.en.html'
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap trash: '~/.TeXmacs'
end
