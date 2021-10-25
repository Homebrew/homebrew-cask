cask "thunder" do
  version "4.1.1.65037"
  sha256 "68d92e414bf90ef3c5f3efebdf142aa5f59bcb25f7a33b5db68d40447b358467"

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
