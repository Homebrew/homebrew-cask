cask 'torrent-file-editor' do
  version '0.3.10'
  sha256 'd6e6e7e9481a6ba79c1fadc5f7cb4891400d6e15777a2100df2df4a07b2077af'

  url "https://downloads.sourceforge.net/torrent-file-editor/v#{version}/torrent-file-editor-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/torrent-file-editor/rss',
          checkpoint: '8eb2505a1a25c03ffca437f2e30d91dc4a9161ca27554beaf8ae8a9bdbe7aebc'
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
