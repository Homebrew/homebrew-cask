cask 'webtorrent' do
  version '0.6.1'
  sha256 'ea8c74a587577765ff892e267268e25df75d24f4b4c39625522aeab553e690d6'

  # github.com/feross/webtorrent-desktop was verified as official when first introduced to the cask
  url "https://github.com/feross/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/feross/webtorrent-desktop/releases.atom',
          checkpoint: '07c24fd9845dba6bd10ad24fac4a93904b25e4cd87ed1b08f6ce74df608ccf5b'
  name 'WebTorrent Desktop'
  homepage 'https://webtorrent.io/desktop'
  license :mit

  app 'WebTorrent.app'

  zap delete: [
                '~/Library/Application Support/WebTorrent',
                '~/Library/Saved Application State/io.webtorrent.webtorrent.savedState',
                '~/Library/Caches/WebTorrent',
                '~/Library/Preferences/io.webtorrent.webtorrent.plist',
                '~/Library/Application Support/io.webtorrent.webtorrent.ShipIt',
                '~/Library/Caches/io.webtorrent.webtorrent',
              ]
end
