cask "wifi-explorer-pro" do
  version "3.3.2,13"
  sha256 "264594418d11cc2efebe7f7618cb8257efb6a17722cc613ebde5fdfa855d8f50"

  url "https://www.intuitibits.com/downloads/WiFiExplorerPro_#{version.before_comma}.pkg"
  name "WiFi Explorer Pro"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://www.intuitibits.com/products/wifi-explorer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.wifiexplorerpro3cast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  pkg "WiFiExplorerPro_#{version.before_comma}.pkg"

  uninstall pkgutil:   [
    "com.intuitibits.wifiexplorerpro3.pkg",
    "com.intuitibits.wifiexplorerpro-helper.pkg",
  ],
            launchctl: [
              "com.intuitibits.wifiexplorerpro3.wifiexplorerpro-bpf",
            ]

  zap trash: [
    "~/Library/Application Support/WiFi Explorer Pro 3",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.wifiexplorerpro3.*",
    "~/Library/Group Containers/2B9R362QNU.com.adriangranados.wifiexplorer",
    "~/Library/Saved Application State/com.intuitibits.wifiexplorerpro3.savedState",
    "~/Library/Preferences/com.intuitibits.wifiexplorerpro3.plist",
    "~/Library/Caches/com.intuitibits.wifiexplorerpro3",
    "~/Library/Preferences/com.intuitibits.wifiexplorerpro3.plist",
  ]
end
