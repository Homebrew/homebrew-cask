cask 'webtorrent' do
  version '0.14.0'
  sha256 '4153940673341c8640310973ee0cf39eecad963ae577fbece2abc225659e39e8'

  # github.com/feross/webtorrent-desktop was verified as official when first introduced to the cask
  url "https://github.com/feross/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/feross/webtorrent-desktop/releases.atom',
          checkpoint: '6c1efde2a64755df13b6d7d488fa8e8fba76bbc5aa501febddca57ddc94cb57f'
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
