cask "wiso-steuer-2022" do
  # NOTE: "2022" is not a version number, but an intrinsic part of the product name
  version "29.15.4410"
  sha256 :no_check

  url "https://download.buhl.de/ESD/Steuer/2022/WISOSteuerMac2022.dmg"
  name "WISO Steuer 2022"
  desc "Tax declaration for the fiscal year 2021"
  homepage "https://www.buhl.de/download/wiso-steuer-2022/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SteuerMac 2022.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2022",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2022",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2022",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2022.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2022.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2022",
  ]
end
