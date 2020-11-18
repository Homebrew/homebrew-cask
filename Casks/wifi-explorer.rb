cask "wifi-explorer" do
  version "3.0"
  sha256 "d76434e529da0b4d280435bc97fcc02714ea6161c326736bf56652d3f7425068"

  url "https://www.intuitibits.com/downloads/WiFiExplorer_#{version}.dmg"
  appcast "https://www.intuitibits.com/appcasts/wifiexplorercast.xml"
  name "WiFi Explorer"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

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
