cask "xlplayer" do
  version "2.0.6.1288"
  sha256 "ddfe34ea188b1ac0e77fed209659031d7e8a30015f779a6a2c7c3997525bac36"

  # down.sandai.net/ was verified as official when first introduced to the cask
  url "https://down.sandai.net/mac/xlplayer_#{version}.dmg"
  appcast "https://static-xl.a.88cdn.com/json/xunlei_video_version_mac.json"
  name "XLPlayer for Mac"
  name "迅雷影音 for Mac"
  homepage "https://video.xunlei.com/mac.html"

  depends_on macos: ">= :yosemite"

  app "XLPlayer.app"

  zap trash: [
    "~/Library/Application Support/XLPlayer",
    "~/Library/Caches/com.xunlei.XLPlayer",
    "~/Library/Preferences/com.xunlei.XLPlayer.plist",
    "~/Library/Saved Application State/com.xunlei.XLPlayer.savedState",
  ]
end
