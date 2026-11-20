cask "wifi-explorer" do
  version "3.6.10"
  sha256 "5e84520e9f06e891d9d6ab255be291ca7af20f0e70cef7f3439e945ac8b0de90"

  url "https://www.intuitibits.com/downloads/WiFiExplorer_#{version}.dmg"
  name "WiFi Explorer"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/wifiexplorercast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "WiFi Explorer.app"

  uninstall quit: "wifiexplorer"

  zap trash: [
    "~/Library/Application Support/WiFi Explorer",
    "~/Library/Caches/wifiexplorer",
    "~/Library/Cookies/wifiexplorer.binarycookies",
    "~/Library/Group Containers/2B9R362QNU.com.adriangranados.wifiexplorer",
    "~/Library/HTTPStorages/wifiexplorer*",
    "~/Library/Preferences/com.adriangranados.wifiexplorer*",
    "~/Library/Preferences/wifiexplorer.plist",
    "~/Library/Saved Application State/wifiexplorer.savedState",
  ]
end
