cask "videoduke" do
  version "2.15.2"
  sha256 :no_check

  url "https://cdn.video-downloader-mac.com/download/videoduke.dmg"
  name "VideoDuke"
  desc "Video downloader"
  homepage "https://www.video-downloader-mac.com/"

  livecheck do
    url "https://cdn.video-downloader-mac.com/download/videoduke-update/videoduke.xml"
    strategy :sparkle, &:short_version
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
