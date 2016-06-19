cask 'webtorrent' do
  version '0.7.2'
  sha256 'c27533baacc50da8783f23ee2a07c8af655f807b1786f4e7574b8bb3f9786754'

  # github.com/feross/webtorrent-desktop was verified as official when first introduced to the cask
  url "https://github.com/feross/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/feross/webtorrent-desktop/releases.atom',
          checkpoint: '98e5523a6768228a4f337d8ad342fc1d6d8b57f9d4c4dccde778760321fe3e17'
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
