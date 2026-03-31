cask "wiso-steuer-2025" do
  # NOTE: "2025" is not a version number, but an intrinsic part of the product name
  version "32.12.3260-RC3,32.12.3260"
  sha256 "8cc7362eac031d90ad3a3bf7cd10b7eda563247c2b1a1578852cb38394457f2e"

  url "https://update.buhl-data.com/Updates/Steuer/2025/Mac/Files/#{version.csv.first}/SteuerMac2025-#{version.csv.second || version.csv.first.split("-").first}.dmg",
      verified: "update.buhl-data.com/Updates/Steuer/"
  name "WISO Steuer 2025"
  desc "Tax declaration for the fiscal year 2024"
  homepage "https://www.buhl.de/download/wiso-steuer-2025/"

  livecheck do
    url "https://update.buhl-data.com/Updates/Steuer/2025/Mac/Aktuell/appcast-steuer.xml"
    regex(%r{/v?(\d+(?:\.\d+)+[^/]*)/SteuerMac2025[._-]v?(\d+(?:\.\d+)+(?:-\w+)?)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      (match[1] == match[2]) ? match[1] : "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
