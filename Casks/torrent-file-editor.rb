cask "torrent-file-editor" do
  version "0.3.17"
  sha256 "5ed1303dc25cdb2f6515b75faee574d07a7ec280653b0cc4e6a8b37f6be3744a"

  # github.com/torrent-file-editor/torrent-file-editor/ was verified as official when first introduced to the cask
  url "https://github.com/torrent-file-editor/torrent-file-editor/releases/download/v#{version}/torrent-file-editor-#{version}.dmg"
  appcast "https://github.com/torrent-file-editor/torrent-file-editor/releases.atom"
  name "Torrent File Editor"
  homepage "https://torrent-file-editor.github.io/"

  depends_on macos: ">= :sierra"

  app "Torrent File Editor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.torrent-file-editor.sfl*",
    "~/Library/Caches/net.sourceforge.torrent-file-editor",
    "~/Library/Cookies/net.sourceforge.torrent-file-editor.binarycookies",
    "~/Library/Preferences/net.sourceforge.torrent-file-editor.plist",
    "~/Library/Saved Application State/net.sourceforge.torrent-file-editor.savedState",
  ]
end
