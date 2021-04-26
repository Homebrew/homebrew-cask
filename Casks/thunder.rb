cask "thunder" do
  version "4.0.0.12079"
  sha256 "e3afc8acb1bea5108fa9beb08a867b319355c534dc5529eec6df31bedf4983c3"

  url "https://down.sandai.net/mac/thunder_#{version}.dmg",
      verified: "down.sandai.net/"
  appcast "https://static-xl9-ssl.xunlei.com/json/mac_download_url.json"
  name "Thunder"
  name "迅雷"
  desc "VPN and WiFi proxy"
  homepage "https://www.xunlei.com/"

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
