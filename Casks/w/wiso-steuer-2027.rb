cask "wiso-steuer-2027" do
  # NOTE: "2027" is not a version number, but an intrinsic part of the product name
  version "34.00.1600"
  sha256 :no_check

  url "https://download.buhl.de/ESD/Steuer/2027/WISOSteuer2027.dmg"
  name "WISO Steuer 2027"
  desc "Tax declaration for the fiscal year 2026"
  homepage "https://www.buhl.de/download/wiso-steuer-2027/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: :monterey

  app "SteuerMac 2027.app", target: "WISO Steuer 2027.app"

  uninstall quit: "com.BuhlData.WISOsteuerMac2027"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2027",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2027",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2027",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2027.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2027.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2027",
  ]
end
