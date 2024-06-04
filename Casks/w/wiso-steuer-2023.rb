cask "wiso-steuer-2023" do
  # NOTE: "2023" is not a version number, but an intrinsic part of the product name
  version "30.14.4340"
  sha256 :no_check

  url "https://download.buhl.de/ESD/Steuer/2023/WISOSteuer2023.dmg"
  name "WISO Steuer 2023"
  desc "Tax declaration for the fiscal year 2022"
  homepage "https://www.buhl.de/download/wiso-steuer-2023/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SteuerMac 2023.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2023",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2023",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2023",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2023.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2023.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2023",
  ]
end
