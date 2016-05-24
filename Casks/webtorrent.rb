cask 'webtorrent' do
  version '0.5.1'
  sha256 'eeda30d9c4dc8dca7bb2b3fb6fd2c7c2c1aa0eb0bc39b1eb576fd4546dcbe049'

  # github.com/feross/webtorrent-desktop was verified as official when first introduced to the cask
  url "https://github.com/feross/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/feross/webtorrent-desktop/releases.atom',
          checkpoint: '05338003baf4669cc187b21b917b5025060d5653dda794995f9e2a85c8f4476f'
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
