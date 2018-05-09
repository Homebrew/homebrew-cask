cask 'webtorrent' do
  version '0.19.0'
  sha256 'b05c4f9f10d7aedbb2af7836b4cf0366db887e9695439b9475e5e357b917c720'

  # github.com/webtorrent/webtorrent-desktop was verified as official when first introduced to the cask
  url "https://github.com/webtorrent/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/webtorrent/webtorrent-desktop/releases.atom',
          checkpoint: '52d90076b0eccfb1af7651adca3240e0605429aa8ddeceb7b1a432371ecc759f'
  name 'WebTorrent Desktop'
  homepage 'https://webtorrent.io/desktop/'

  auto_updates true

  app 'WebTorrent.app'

  zap trash: [
               '~/Library/Application Support/io.webtorrent.webtorrent.ShipIt',
               '~/Library/Application Support/WebTorrent',
               '~/Library/Caches/io.webtorrent.webtorrent',
               '~/Library/Caches/io.webtorrent.webtorrent.ShipIt',
               '~/Library/Caches/WebTorrent',
               '~/Library/Preferences/io.webtorrent.webtorrent-helper.plist',
               '~/Library/Preferences/io.webtorrent.webtorrent.plist',
               '~/Library/Saved Application State/io.webtorrent.webtorrent.savedState',
             ]
end
