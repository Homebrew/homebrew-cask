cask 'utorrent' do
  version :latest
  sha256 :no_check

  if Hardware::CPU.type == :ppc
    url 'https://download-new.utorrent.com/endpoint/utmac/os/osx-ppc/track/stable/'
    app 'uTorrent.app'
  else
    url 'https://download-new.utorrent.com/endpoint/utmac/os/osx/track/stable/'
    appcast 'https://update.utorrent.com/checkupdate.php',
            :sha256 => '946ad7e609c8361af5e1fcd34d59116bd83400f6c2e56e7acd7ce9784c5b6095'
    installer :manual => 'uTorrent.app'
  end

  name 'µTorrent'
  homepage 'https://www.utorrent.com/'
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
