cask "wifi-explorer-pro" do
  version "3.4.3,22"
  sha256 "52f6e211e96f5b3f356ca04a7f3c03dcfb5518ea64bbab2168b563d32ab5d0cd"

  url "https://www.intuitibits.com/appcasts/WiFiExplorerPro_#{version.csv.first}.zip"
  name "WiFi Explorer Pro"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.wifiexplorerpro#{version.major}cast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "WiFi Explorer Pro #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/WiFi Explorer Pro #{version.major}",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.wifiexplorerpro#{version.major}.*",
    "~/Library/Caches/com.intuitibits.wifiexplorerpro#{version.major}",
    "~/Library/Group Containers/2B9R362QNU.com.adriangranados.wifiexplorer",
    "~/Library/Preferences/com.intuitibits.wifiexplorerpro#{version.major}.plist",
    "~/Library/Saved Application State/com.intuitibits.wifiexplorerpro#{version.major}.savedState",
  ]
end
