cask "thunder" do
  version "3.4.1.4368"
  sha256 "a732b748d95005fbf7ecfe3373be037940b10127dc1adf3de30a4a05d46a97f2"

  # down.sandai.net/ was verified as official when first introduced to the cask
  url "https://down.sandai.net/mac/thunder_#{version}.dmg"
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
