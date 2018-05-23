cask 'webtorrent' do
  version '0.20.0'
  sha256 '80b0c58632139e7e537d1a2ee2bbf26e6b65f1e9abde3a5ad7a5a073c3c8f228'

  # github.com/webtorrent/webtorrent-desktop was verified as official when first introduced to the cask
  url "https://github.com/webtorrent/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/webtorrent/webtorrent-desktop/releases.atom',
          checkpoint: 'c674150a9fd57253c652159f177b45b20a8b122cf65a604fb740485245b6eb1e'
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
               '~/Library/Cookies/io.webtorrent.webtorrent.binarycookies',
               '~/Library/Preferences/io.webtorrent.webtorrent-helper.plist',
               '~/Library/Preferences/io.webtorrent.webtorrent.plist',
               '~/Library/Saved Application State/io.webtorrent.webtorrent.savedState',
               '~/Library/WebKit/io.webtorrent.webtorrent',
             ]
end
