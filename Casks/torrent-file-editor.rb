cask 'torrent-file-editor' do
  version '0.3.13'
  sha256 'b8136b13a3a3106164f443a4a8dcc69870f460d17af011f5e321b78f6f7c261f'

  url "https://downloads.sourceforge.net/torrent-file-editor/v#{version}/torrent-file-editor-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/torrent-file-editor/rss'
  name 'Torrent File Editor'
  homepage 'https://sourceforge.net/projects/torrent-file-editor/'

  depends_on macos: '>= :sierra'

  app 'Torrent File Editor.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.torrent-file-editor.sfl*',
               '~/Library/Caches/net.sourceforge.torrent-file-editor',
               '~/Library/Cookies/net.sourceforge.torrent-file-editor.binarycookies',
               '~/Library/Preferences/net.sourceforge.torrent-file-editor.plist',
               '~/Library/Saved Application State/net.sourceforge.torrent-file-editor.savedState',
             ]
end
