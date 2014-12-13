cask :v1 => 'utorrent' do
  version :latest
  sha256 :no_check

  if Hardware::CPU.type == :ppc
    url 'http://download-new.utorrent.com/endpoint/utmac/os/osx-ppc/track/stable/'
    app 'uTorrent.app'
  else
    url 'http://download-new.utorrent.com/endpoint/utmac/os/osx/track/stable/'
    appcast 'http://update.utorrent.com/checkupdate.php'
    installer :manual => 'uTorrent-Installer.app'
  end

  homepage 'http://www.utorrent.com/'
  license :freemium

  zap :delete => '~/Library/Application Support/uTorrent'
end
