cask "thunder" do
  version "4.0.1.14502"
  sha256 "21fb18ad48dcacfe4d8953c2397261830e17d01b56e64a07a063e32c64be2e43"

  url "https://down.sandai.net/mac/thunder_#{version}.dmg",
      verified: "down.sandai.net/"
  name "Thunder"
  name "迅雷"
  desc "VPN and WiFi proxy"
  homepage "https://www.xunlei.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/thunder_(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Thunder.app"

  zap trash: [
    "~/Library/Application Support/Thunder",
    "~/Library/Caches/com.xunlei.Thunder",
    "~/Library/Caches/com.xunlei.XLPlayer",
    "~/Library/Cookies/com.xunlei.Thunder.binarycookies",
    "~/Library/Preferences/com.xunlei.Thunder.loginSDK.plist",
    "~/Library/Preferences/com.xunlei.Thunder.plist",
    "~/Library/Preferences/com.xunlei.XLPlayer.plist",
    "~/Library/Saved Application State/com.xunlei.Thunder.savedState",
    "~/Library/Saved Application State/com.xunlei.XLPlayer.savedState",
    "~/Library/WebKit/com.xunlei.Thunder",
  ]
end
