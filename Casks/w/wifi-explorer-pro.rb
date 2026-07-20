cask "wifi-explorer-pro" do
  version "3.10.2"
  sha256 "d36116c2e4460fd33676fb905a07af13a8dc51634114840d8ac656be32a170b1"

  url "https://www.intuitibits.com/downloads/WiFiExplorerPro_#{version}.pkg"
  name "WiFi Explorer Pro"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.wifiexplorerpro#{version.major}cast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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
