cask 'torrent-file-editor' do
  version '0.3.16'
  sha256 '69e97ea059de7711170016bcd9728331177e2dbfdda4472482beee064ea30745'

  # github.com/torrent-file-editor/torrent-file-editor was verified as official when first introduced to the cask
  url "https://github.com/torrent-file-editor/torrent-file-editor/releases/download/v#{version}/torrent-file-editor-#{version}.dmg"
  appcast 'https://github.com/torrent-file-editor/torrent-file-editor/releases.atom'
  name 'Torrent File Editor'
  homepage 'https://torrent-file-editor.github.io/'

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
