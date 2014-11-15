cask :v1 => 'texmacs' do
  version '1.99.1'
  sha256 'b6aab5bcb263e847c97062824b8852380cab4159306b035fcca199f92d243d51'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  homepage 'http://www.texmacs.org/'
  license :unknown

  app "TeXmacs-#{version}.app"

  zap :delete => '~/.TeXmacs'
end
