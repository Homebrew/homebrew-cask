cask "wifi-explorer-pro" do
  version "3.5.2,33"
  sha256 "be40248c29970acdf68b37cd6d55f34832429b272b801b4de8e45df82e7c932e"

  url "https://www.intuitibits.com/downloads/WiFiExplorerPro_#{version.csv.first}.pkg"
  name "WiFi Explorer Pro"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.wifiexplorerpro#{version.major}cast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  pkg "WiFiExplorerPro_#{version.csv.first}.pkg"

  uninstall pkgutil:   [
              "com.intuitibits.wifiexplorerpro#{version.major}.pkg",
              "com.intuitibits.wifiexplorerpro-helper.pkg",
            ],
            launchctl: "com.intuitibits.wifiexplorerpro#{version.major}.wifiexplorerpro-bpf"

  zap trash: [
    "~/Library/Application Support/WiFi Explorer Pro #{version.major}",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.wifiexplorerpro#{version.major}.*",
    "~/Library/Caches/com.intuitibits.wifiexplorerpro#{version.major}",
    "~/Library/Group Containers/2B9R362QNU.com.adriangranados.wifiexplorer",
    "~/Library/Preferences/com.intuitibits.wifiexplorerpro#{version.major}.plist",
    "~/Library/Saved Application State/com.intuitibits.wifiexplorerpro#{version.major}.savedState",
  ]
end
