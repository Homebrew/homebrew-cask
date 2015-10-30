cask :v1 => 'texmacs' do
  version '1.99.2'
  sha256 '2d8ab5440a1d68abef2f6d2f5663887d5713770f819aa8e292a5450ce12f708a'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'
  license :gpl

  app "TeXmacs-#{version}.app"

  zap :delete => '~/.TeXmacs'
end
