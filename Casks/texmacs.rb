cask 'texmacs' do
  version '1.99.10'
  sha256 '55f5731d72916d7bdd1c1d7b0da5f4bda9db5078eb04e8cf6785df4cb86204b8'

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'https://www.texmacs.org/tmweb/download/macosx.en.html'
  name 'GNU TeXmacs'
  homepage 'https://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap trash: '~/.TeXmacs'
end
