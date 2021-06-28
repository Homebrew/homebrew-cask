cask "thunder" do
  version "4.0.3.31366"
  sha256 "dde12ce42ff39b2f865ad747852be4882774fd0306bfc101805a1dce97e2b3a2"

  url "https://down.sandai.net/mac/thunder_#{version}.dmg",
      verified: "down.sandai.net/"
  name "Thunder"
  name "迅雷"
  desc "VPN and WiFi proxy"
  homepage "https://www.xunlei.com/"

  livecheck do
    url "https://static-xl9-ssl.xunlei.com/json/mac_preferences.json"
    regex(/appcast[._-]v?(\d+(?:\.\d+)+)\.xml/i)
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
