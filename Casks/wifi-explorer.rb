cask "wifi-explorer" do
  version "3.4.3"
  sha256 "abc525e9639162063ec67960b513d9eae17b833d19d88d02cd0dce7683f56626"

  url "https://www.intuitibits.com/downloads/WiFiExplorer_#{version}.dmg"
  name "WiFi Explorer"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/wifiexplorercast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "WiFi Explorer.app"

  zap trash: [
    "~/Library/Caches/wifiexplorer",
    "~/Library/Cookies/wifiexplorer.binarycookies",
    "~/Library/Group Containers/2B9R362QNU.com.adriangranados.wifiexplorer",
    "~/Library/Preferences/com.adriangranados.wifiexplorer*",
    "~/Library/Preferences/wifiexplorer.plist",
    "~/Library/Saved Application State/wifiexplorer.savedState",
  ]
end
