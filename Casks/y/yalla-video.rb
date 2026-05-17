cask "yalla-video" do
  version "1.1.2"
  sha256 "da7b5e546026fd48912b8450a5b8d289d36bf535baae7a7748f451e73ea33bb5"

  url "https://github.com/monzer15/yalla-video-releases/releases/download/v#{version}/Yalla-Video-#{version}-arm64.dmg",
      verified: "github.com/monzer15/yalla-video-releases/"
  name "Yalla Video"
  desc "Fast desktop video downloader for YouTube and 1000+ sites"
  homepage "https://github.com/monzer15/yalla-video-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Yalla Video.app"

  zap trash: [
    "~/Library/Application Support/Yalla Video",
    "~/Library/Caches/io.github.monzer15.YallaVideo",
    "~/Library/Logs/Yalla Video",
    "~/Library/Preferences/io.github.monzer15.YallaVideo.plist",
    "~/Library/Saved Application State/io.github.monzer15.YallaVideo.savedState",
  ]
end
