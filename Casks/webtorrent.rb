cask 'webtorrent' do
  version '0.16.0'
  sha256 '4156578dcaa34df0262469f93d2cd7630ca5688b4ad87aadc92d3dd129d2d883'

  # github.com/feross/webtorrent-desktop was verified as official when first introduced to the cask
  url "https://github.com/feross/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/feross/webtorrent-desktop/releases.atom',
          checkpoint: '46813ac46b08ec5ff387164f52fd9a134e2bee2491de7a3569a323cfe7d2c62d'
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
