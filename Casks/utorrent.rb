cask 'utorrent' do
  version :latest
  sha256 :no_check

  url 'https://download-new.utorrent.com/endpoint/utmac/os/osx/track/stable/'
  name 'µTorrent'
  homepage 'https://www.utorrent.com/'

  installer manual: 'uTorrent.app'

  zap delete: [
                '~/Library/Application Support/uTorrent',
                '~/Library/Preferences/com.bittorrent.uTorrent.plist',
                '~/Library/Preferences/com.bittorrent.uTorrent-Installer.plist',
                '~/Library/Saved Application State/com.bittorrent.uTorrent.savedState',
                '~/Library/Saved Application State/com.bittorrent.uTorrent-Installer.savedState',
                '~/Library/Caches/com.bittorrent.uTorrent',
                '~/Library/Caches/com.bittorrent.uTorrent-Installer',
              ]
end
