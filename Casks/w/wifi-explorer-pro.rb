cask "wifi-explorer-pro" do
  version "3.6.1"
  sha256 "b57b3558a35fabb61e96b5ecf84f0b82b4eb6a54f91563ed9b79279f4a274115"

  url "https://www.intuitibits.com/downloads/WiFiExplorerPro_#{version}.pkg"
  name "WiFi Explorer Pro"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.wifiexplorerpro#{version.major}cast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  pkg "WiFiExplorerPro_#{version}.pkg"

  uninstall launchctl: "com.intuitibits.wifiexplorerpro#{version.major}.wifiexplorerpro-bpf",
            pkgutil:   [
              "com.intuitibits.wifiexplorerpro#{version.major}.pkg",
              "com.intuitibits.wifiexplorerpro-helper.pkg",
            ]

  zap trash: [
    "~/Library/Application Support/WiFi Explorer Pro #{version.major}",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.wifiexplorerpro#{version.major}.*",
    "~/Library/Caches/com.intuitibits.wifiexplorerpro#{version.major}",
    "~/Library/Group Containers/2B9R362QNU.com.adriangranados.wifiexplorer",
    "~/Library/Preferences/com.intuitibits.wifiexplorerpro#{version.major}.plist",
    "~/Library/Saved Application State/com.intuitibits.wifiexplorerpro#{version.major}.savedState",
  ]
end
