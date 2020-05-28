cask 'texmacs' do
  version '1.99.13'
  sha256 '977388daff9da7cedb76bf1b84f3d8ba978fc1698fbcc4dd2c0bd0d7964c9399'

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast 'https://www.texmacs.org/tmweb/download/macosx.en.html'
  name 'GNU TeXmacs'
  homepage 'https://www.texmacs.org/'

  app "TeXmacs-#{version}.app"

  zap trash: '~/.TeXmacs'
end
