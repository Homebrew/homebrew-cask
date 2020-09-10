cask "wifi-explorer" do
  version "2.6.2"
  sha256 "6405bbb84fe5dcc1c7fb7689cdfba7e8025efc665a0d3aa348eba4002f537584"

  url "https://www.intuitibits.com/downloads/WiFiExplorer_#{version}.dmg"
  appcast "https://www.intuitibits.com/appcasts/wifiexplorercast.xml"
  name "WiFi Explorer"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  app "WiFi Explorer.app"

  zap trash: [
    "~/Library/Caches/wifiexplorer",
    "~/Library/Cookies/wifiexplorer.binarycookies",
    "~/Library/Preferences/wifiexplorer.plist",
    "~/Library/Saved Application State/wifiexplorer.savedState",
  ]
end
