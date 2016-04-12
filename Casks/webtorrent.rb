cask 'webtorrent' do
  version '0.3.3'
  sha256 'b4582f9ef6671d0da85de9c23db5cd938b0bf0146022481c705fd31d7fa6f3d0'

  # github.com/feross/webtorrent-desktop was verified as official when first introduced to the cask
  url "https://github.com/feross/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/feross/webtorrent-desktop/releases.atom',
          checkpoint: 'd4d22d29a8152ab2ebd1a5f63ff99677198d1f8ee6146aead340ca334d04d108'
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
