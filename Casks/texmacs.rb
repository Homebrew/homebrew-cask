cask 'texmacs' do
  version '1.99.6'
  sha256 'caeeedb58e3b1f8cb1fa35b7b240f70883f18a3bec6073b6415e98b1b8a7f3a6'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'http://www.texmacs.org/tmweb/download/macosx.en.html',
          checkpoint: '753b8f8cdfaa2a8719e36543837dbfaf69dcd9ad9f9e37471a8415bbf1479731'
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap trash: '~/.TeXmacs'
end
