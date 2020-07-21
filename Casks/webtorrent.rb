cask 'webtorrent' do
  version '0.23.0'
  sha256 'fceb06c11b36735553a362356e9a4912afd91232001155dea6f5af8072a4a60f'

  # github.com/webtorrent/webtorrent-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/webtorrent/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg"
  appcast 'https://github.com/webtorrent/webtorrent-desktop/releases.atom'
  name 'WebTorrent Desktop'
  homepage 'https://webtorrent.io/desktop/'

  app 'WebTorrent.app'

  zap trash: [
               '~/Library/Application Support/io.webtorrent.webtorrent.ShipIt',
               '~/Library/Application Support/WebTorrent',
               '~/Library/Caches/io.webtorrent.webtorrent',
               '~/Library/Caches/io.webtorrent.webtorrent.ShipIt',
               '~/Library/Caches/WebTorrent',
               '~/Library/Cookies/io.webtorrent.webtorrent.binarycookies',
               '~/Library/Preferences/ByHost/io.webtorrent.webtorrent.ShipIt.*.plist',
               '~/Library/Preferences/io.webtorrent.webtorrent-helper.plist',
               '~/Library/Preferences/io.webtorrent.webtorrent.plist',
               '~/Library/Saved Application State/io.webtorrent.webtorrent.savedState',
               '~/Library/WebKit/io.webtorrent.webtorrent',
             ]
end
