cask 'texmacs' do
  version '1.99.12'
  sha256 'be1ea063443d2e2ee5b599350276f0ff152d284279fc1a9c91665ac120b377d6'

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'https://www.texmacs.org/tmweb/download/macosx.en.html'
  name 'GNU TeXmacs'
  homepage 'https://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap trash: '~/.TeXmacs'
end
