cask "videoduke" do
  version "2.3,485"
  sha256 :no_check

  url "https://cdn.eltima.com/download/videoduke.dmg"
  name "VideoDuke"
  desc "Video downloader"
  homepage "https://mac.eltima.com/video-downloader.html"

  livecheck do
    url "https://cdn.eltima.com/download/videoduke-update/videoduke.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "VideoDuke.app"

  zap trash: [
    "~/Library/Caches/com.eltima.VideoDuke",
    "~/Library/Logs/VideoDuke.log",
    "~/Library/Preferences/com.eltima.VideoDuke.plist",
    "~/Library/Saved Application State/com.eltima.VideoDuke.savedState",
  ]
end
