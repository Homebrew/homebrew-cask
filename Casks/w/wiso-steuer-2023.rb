cask "wiso-steuer-2023" do
  # NOTE: "2023" is not a version number, but an intrinsic part of the product name
  version "30.16.5130-RC1"
  sha256 "c9dce5d0098d36d797d91b97b3d8b4cf062c9e1cc934d2a3c8defd0713b46feb"

  url "https://update.buhl-data.com/Updates/Steuer/2023/Mac/Files/#{version}/SteuerMac2023-#{version.split("-").first}.dmg",
      verified: "update.buhl-data.com/Updates/Steuer/"
  name "WISO Steuer 2023"
  desc "Tax declaration for the fiscal year 2022"
  homepage "https://www.buhl.de/download/wiso-steuer-2023/"

  livecheck do
    url "https://update.buhl-data.com/Updates/Steuer/2023/Mac/Aktuell/appcast-steuer.xml"
    regex(%r{/v?(\d+(?:\.\d+)+[^/]*)/SteuerMac2023[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  # Renamed for consistency: app name differs in Finder to shell
  app "SteuerMac 2023.app", target: "WISO Steuer 2023.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2023",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2023",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2023",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2023.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2023.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2023",
  ]
end
