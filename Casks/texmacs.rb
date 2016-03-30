cask 'texmacs' do
  version '1.99.4'
  sha256 '7065db07e8190c9d211dd32b6e3e711cc9c49210c51afe6fc273fe50aa9c9e3d'

  url "http://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  name 'GNU TeXmacs'
  homepage 'http://www.texmacs.org/'
  license :gpl

  app "TeXmacs-#{version}.app"

  zap delete: '~/.TeXmacs'
end
