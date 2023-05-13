cask "xlplayer" do
  version "3.1.3.65885"
  sha256 "952d9afdc1a27ddd8d4c41af08235573559053d67c13d9119937f088822d7a30"

  url "https://down.sandai.net/mac/player_#{version}.dmg",
      verified: "down.sandai.net/"
  name "XLPlayer for Mac"
  name "迅雷影音 for Mac"
  desc "Video player"
  homepage "https://video.xunlei.com/mac.html"

  livecheck do
    url "https://static-xl.a.88cdn.com/json/xunlei_video_version_mac.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "XLPlayer.app"

  zap trash: [
    "~/Library/Application Support/XLPlayer",
    "~/Library/Caches/com.xunlei.XLPlayer",
    "~/Library/HTTPStorages/com.xunlei.XLPlayer",
    "~/Library/Preferences/com.xunlei.XLPlayer.plist",
    "~/Library/WebKit/com.xunlei.XLPlayer",
  ]
end
