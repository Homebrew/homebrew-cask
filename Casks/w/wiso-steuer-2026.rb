cask "wiso-steuer-2026" do
  # NOTE: "2026" is not a version number, but an intrinsic part of the product name
  version "33.04.3010-RC2,33.04.3010"
  sha256 "865e23ee693b1a0a652330316c38e34dbe289271d9cb2f4657139784d34cecbf"

  url "https://update.buhl-data.com/Updates/Steuer/2026/Mac/Files/#{version.csv.first}/SteuerMac2026-#{version.csv.second || version.csv.first.split("-").first}.dmg",
      verified: "update.buhl-data.com/Updates/Steuer/"
  name "WISO Steuer 2026"
  desc "Tax declaration for the fiscal year 2025"
  homepage "https://www.buhl.de/download/wiso-steuer-2026/"

  livecheck do
    url "https://update.buhl-data.com/Updates/Steuer/2026/Mac/Aktuell/appcast-steuer.xml"
    regex(%r{/v?(\d+(?:\.\d+)+[^/]*)/SteuerMac2026[._-]v?(\d+(?:\.\d+)+(?:-\w+)?)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      (match[1] == match[2]) ? match[1] : "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "SteuerMac 2026.app", target: "WISO Steuer 2026.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2026",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2026",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2026",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2026.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2026.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2026",
  ]
end
