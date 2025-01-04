cask "wifi-explorer-pro" do
  version "3.6.8"
  sha256 "5d7db3e95e5540fcde2a8536582da1346ea236552d768597b72dc0c7bc7530bb"

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
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.wifiexplorerpro*",
    "~/Library/Caches/com.intuitibits.wifiexplorerpro#{version.major}",
    "~/Library/Group Containers/2B9R362QNU.com.adriangranados.wifiexplorer",
    "~/Library/Preferences/com.intuitibits.wifiexplorerpro#{version.major}.plist",
    "~/Library/Saved Application State/com.intuitibits.wifiexplorerpro#{version.major}.savedState",
  ]
end
