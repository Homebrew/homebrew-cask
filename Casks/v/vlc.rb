cask "vlc" do
  arch arm: "arm64", intel: "intel64"

  version "3.0.24"
  sha256 arm:   "64a89d93cdd30b0e97131743e246373db82d6826ea882d265d46d74b136da2b7",
         intel: "1ef6c903e2dc026d4e58ddf7b2a9ed0eb6f8caf80a9a9f46f96490340b962707"

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-#{arch}.dmg"
  name "VLC media player"
  desc "Multimedia player"
  homepage "https://www.videolan.org/vlc/"

  livecheck do
    url "https://www.videolan.org/vlc/download-macosx.html"
    regex(%r{href=.*?/vlc[._-]v?(\d+(?:\.\d+)+)(?:[._-][a-z]\w*)?\.dmg}i)
  end

  auto_updates true
  conflicts_with cask: "vlc@nightly"
  depends_on :macos

  app "VLC.app"
  command_wrapper "vlc",
                  executable: "#{appdir}/VLC.app/Contents/MacOS/VLC"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl*",
    "~/Library/Application Support/org.videolan.vlc",
    "~/Library/Application Support/VLC",
    "~/Library/Caches/org.videolan.vlc",
    "~/Library/HTTPStorages/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc.plist",
    "~/Library/Saved Application State/org.videolan.vlc.savedState",
  ]
end
