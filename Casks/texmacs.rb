cask 'texmacs' do
  version '1.99.5'
  sha256 '6f560861a25439a3a4e314098ed096a3416581eab90ace89c7055e2eb34f7e2e'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'http://www.texmacs.org/tmweb/download/macosx.en.html',
          checkpoint: '3631d7cd770cb0bf2b23e8b10a330e7ddfbece85c49fc74e6531e83e0bb00778'
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap trash: '~/.TeXmacs'
end
