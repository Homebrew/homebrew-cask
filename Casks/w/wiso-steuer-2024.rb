cask "wiso-steuer-2024" do
  # NOTE: "2024" is not a version number, but an intrinsic part of the product name
  version "31.07.3940"
  sha256 :no_check

  url "https://download.buhl.de/ESD/Steuer/2024/WISOSteuer2024.dmg"
  name "WISO Steuer 2024"
  desc "Tax declaration for the fiscal year 2023"
  homepage "https://www.buhl.de/download/wiso-steuer-2024/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  # Renamed for consistency: app name differs in Finder to shell
  app "SteuerMac 2024.app", target: "WISO Steuer 2024.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2024",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2024",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2024",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2024.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2024.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2024",
  ]
end
