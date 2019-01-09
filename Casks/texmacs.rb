cask 'texmacs' do
  version '1.99.8'
  sha256 'f38b52fea3260df68e1df47c063719b8ac0aa81937a03f921da5352ac2572381'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'http://www.texmacs.org/tmweb/download/macosx.en.html'
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap trash: '~/.TeXmacs'
end
