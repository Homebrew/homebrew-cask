class UtorrentPpc < Cask
  version :latest
  sha256 :no_check

  url 'http://download-new.utorrent.com/endpoint/utmac/os/osx-ppc/track/stable/'
  homepage 'http://www.utorrent.com/'
  license :gratis

  app 'uTorrent.app'

  zap :delete => '~/Library/Application Support/uTorrent'
end
