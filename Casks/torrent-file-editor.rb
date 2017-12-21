cask 'torrent-file-editor' do
  version '0.3.7'
  sha256 '8edccb9a7d83c403ae386340f33d14310257c094968dc38f4f158c452da5f7d5'

  url "https://downloads.sourceforge.net/torrent-file-editor/v#{version}/torrent-file-editor-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/torrent-file-editor/rss',
          checkpoint: '9ff98c2312780ab239d69c42dcfb27eab21cc58e79a6885ee47cec9d71404b5b'
  name 'Torrent File Editor'
  homepage 'https://sourceforge.net/projects/torrent-file-editor/'

  app 'Torrent File Editor.app'

  zap trash: [
               '~/Library/Caches/net.sourceforge.torrent-file-editor',
               '~/Library/Cookies/net.sourceforge.torrent-file-editor.binarycookies',
               '~/Library/Preferences/net.sourceforge.torrent-file-editor.plist',
               '~/Library/Saved Application State/net.sourceforge.torrent-file-editor.savedState',
             ]
end
