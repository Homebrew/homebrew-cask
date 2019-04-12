cask 'torrent-file-editor' do
  version '0.3.14'
  sha256 '241ede91bbd4ee233d5c11ef5f63825a0fd6f13eeaa4e53028ae159b80f1a8a5'

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
