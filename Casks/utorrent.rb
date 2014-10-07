class Utorrent < Cask
  version :latest
  sha256 :no_check

  url 'http://download-new.utorrent.com/endpoint/utmac/os/osx/track/stable/'
  appcast 'http://update.utorrent.com/checkupdate.php'
  homepage 'http://www.utorrent.com/'
  license :unknown

  caveats do
    manual_installer 'uTorrent-Installer.app'
  end
end
