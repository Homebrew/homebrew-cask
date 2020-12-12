cask "wifi-explorer" do
  version "3.0.1"
  sha256 "9c09075b715cbce81369c8f626967a9c964b93427c1890d1114d7844b13c95df"

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
