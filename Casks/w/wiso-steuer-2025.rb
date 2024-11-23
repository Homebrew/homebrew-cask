cask "wiso-steuer-2025" do
  # NOTE: "2025" is not a version number, but an intrinsic part of the product name
  version "32.00.1520"
  sha256 :no_check

  url "https://download.buhl.de/ESD/Steuer/2025/WISOSteuer2025.dmg"
  name "WISO Steuer 2025"
  desc "Tax declaration for the fiscal year 2024"
  homepage "https://www.buhl.de/download/wiso-steuer-2025/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  # Renamed for consistency: app name differs in Finder to shell
  app "SteuerMac 2025.app", target: "WISO Steuer 2025.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2025",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2025",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2025",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2025.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2025.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2025",
  ]
end
