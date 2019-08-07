cask 'texmacs' do
  version '1.99.11'
  sha256 '7ebadb569ef05cddb853aa3b70cd354b3a969b30f72914de170133924696cec4'

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'https://www.texmacs.org/tmweb/download/macosx.en.html'
  name 'GNU TeXmacs'
  homepage 'https://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap trash: '~/.TeXmacs'
end
