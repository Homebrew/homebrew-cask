cask "wifi-explorer" do
  version "3.4,53"
  sha256 "0615def60f8c915dff5d350e202511faf5967f3665da3240e2df866c29cdb0ce"

  url "https://www.intuitibits.com/downloads/WiFiExplorer_#{version.csv.first}.dmg"
  name "WiFi Explorer"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/wifiexplorercast.xml"
    strategy :sparkle
  end

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
