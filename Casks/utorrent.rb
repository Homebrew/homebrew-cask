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

  name 'µTorrent'
  homepage 'http://www.utorrent.com/'
  license :freemium

  zap :delete => [
                  '~/Library/Application Support/uTorrent',
                  '~/Library/Preferences/com.bittorrent.uTorrent.plist',
                  '~/Library/Preferences/com.bittorrent.uTorrent-Installer.plist',
                  '~/Library/Saved Application State/com.bittorrent.uTorrent.savedState',
                  '~/Library/Saved Application State/com.bittorrent.uTorrent-Installer.savedState',
                  '~/Library/Caches/com.bittorrent.uTorrent',
                  '~/Library/Caches/com.bittorrent.uTorrent-Installer'
                 ]
end
