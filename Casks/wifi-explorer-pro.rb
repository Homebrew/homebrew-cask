cask "wifi-explorer-pro" do
  version "3.5.4"
  sha256 "230d14af07bdf8754fe430a0e2978c9e7998c78073a1cb4ae64a234cd516e1e2"

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
