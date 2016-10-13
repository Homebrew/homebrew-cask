cask 'webtorrent' do
  version '0.17.2'
  sha256 'bf58a517fa212db860f1a8db99417ed82b730b2996109aa64cc2d450c8f47ebb'

  # github.com/feross/webtorrent-desktop was verified as official when first introduced to the cask
  url "https://github.com/feross/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/feross/webtorrent-desktop/releases.atom',
          checkpoint: 'b1361dd58f810194aec58efc6566cbe5d29531b6e8261938f48c01817946e9fd'
  name 'WebTorrent Desktop'
  homepage 'https://webtorrent.io/desktop'

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
