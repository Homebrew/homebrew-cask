cask "wifi-explorer" do
  version "3.1,43"
  sha256 "0487f5e26a2e86d4739be1c57989c059d7048ed90d203b84f672a151e2d9960c"

  url "https://www.intuitibits.com/downloads/WiFiExplorer_#{version.before_comma}.dmg"
  name "WiFi Explorer"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/wifiexplorercast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

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
