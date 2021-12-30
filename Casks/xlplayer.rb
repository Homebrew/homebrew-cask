cask "xlplayer" do
  version "3.0.1.12449"
  sha256 "40ba4499c42e9c2e75858601fb1d031724e54d01f42d56daf9f814c71a796400"

  url "https://down.sandai.net/mac/player_#{version}.dmg",
      verified: "down.sandai.net/"
  name "XLPlayer for Mac"
  name "迅雷影音 for Mac"
  desc "Video player"
  homepage "https://video.xunlei.com/mac.html"

  livecheck do
    url "https://static-xl.a.88cdn.com/json/xunlei_video_version_mac.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  depends_on macos: ">= :yosemite"

  app "XLPlayer.app"

  zap trash: [
    "~/Library/Application Support/XLPlayer",
    "~/Library/Caches/com.xunlei.XLPlayer",
    "~/Library/HTTPStorages/com.xunlei.XLPlayer",
    "~/Library/Preferences/com.xunlei.XLPlayer.plist",
    "~/Library/WebKit/com.xunlei.XLPlayer",
  ]
end
