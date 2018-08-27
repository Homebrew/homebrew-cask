cask 'texmacs' do
  version '1.99.7'
  sha256 '7a92f690cc0a92b2d16fd865669e0aa7027e04c9bf07fc96a2ec9044b854f368'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'http://www.texmacs.org/tmweb/download/macosx.en.html'
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap trash: '~/.TeXmacs'
end
