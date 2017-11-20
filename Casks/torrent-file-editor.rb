cask 'torrent-file-editor' do
  version '0.3.6'
  sha256 '71e7b95a9659436ed71fcadfa4500608bb8f0c6a8cff9b71bcfe7c4528e4dd42'

  url "https://downloads.sourceforge.net/torrent-file-editor/v#{version}/torrent-file-editor-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/torrent-file-editor/rss',
          checkpoint: '0195d5ebd8ec52e6da55edbee35720c6632c5c2506271e111659cc091b1b6847'
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
