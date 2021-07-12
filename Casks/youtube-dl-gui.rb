cask "youtube-dl-gui" do
  version "2.2.2"
  sha256 "3cfb3892f10f6646cb518d185f608a7596db82e82733e04697468971c535699c"

  url "https://github.com/jely2002/youtube-dl-gui/releases/download/v#{version}/YouTube-Downloader-GUI-#{version}.dmg"
  name "YouTube Downloader GUI"
  desc "Cross-platform GUI for youtube-dl made in Electron and node.js"
  homepage "https://github.com/jely2002/youtube-dl-gui"

  app "YouTube Downloader GUI.app"

  zap trash: [
    "~/Library/Preferences/com.jelleglebbeek.youtube-dl-gui.plist",
    "~/Library/Saved Application State/com.jelleglebbeek.youtube-dl-gui.savedState",
  ]
end
