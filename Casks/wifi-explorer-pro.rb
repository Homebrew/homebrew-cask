cask "wifi-explorer-pro" do
  version "3.3.4,15"
  sha256 "d7a76eb65fcc87bc1d7a1dfb2e11fa4d4cef98b85dd6433446d41a796f6e8337"

  url "https://www.intuitibits.com/appcasts/WiFiExplorerPro_#{version.before_comma}.zip"
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
