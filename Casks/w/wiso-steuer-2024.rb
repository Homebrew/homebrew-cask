cask "wiso-steuer-2024" do
  # NOTE: "2024" is not a version number, but an intrinsic part of the product name
  version "31.09.4140-HF2"
  sha256 "c3e31c23f15982ba8c27aff6d8bbfd96c2b2fcc711cec4e7fcadffc1cfa2963e"

  url "https://update.buhl-data.com/Updates/Steuer/2024/Mac/Files/#{version}/SteuerMac2024-#{version.split("-").first}.dmg",
      verified: "update.buhl-data.com/Updates/Steuer/"
  name "WISO Steuer 2024"
  desc "Tax declaration for the fiscal year 2023"
  homepage "https://www.buhl.de/download/wiso-steuer-2024/"

  livecheck do
    url "https://update.buhl-data.com/Updates/Steuer/2024/Mac/Aktuell/appcast-steuer.xml"
    regex(%r{/v?(\d+(?:\.\d+)+[^/]*)/SteuerMac2024[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      match[1]
    end
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
