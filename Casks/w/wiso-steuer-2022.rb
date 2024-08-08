cask "wiso-steuer-2022" do
  # NOTE: "2022" is not a version number, but an intrinsic part of the product name
  version "29.15.4410-HF1"
  sha256 "4220eb5630481e2634cc571bcf806196445cb2b3b07db988273ea94aeac90563"

  url "https://update.buhl-data.com/Updates/Steuer/2022/Mac/Files/#{version}/SteuerMac2022-#{version.split("-").first}.dmg",
      verified: "update.buhl-data.com/Updates/Steuer/"
  name "WISO Steuer 2022"
  desc "Tax declaration for the fiscal year 2021"
  homepage "https://www.buhl.de/download/wiso-steuer-2022/"

  livecheck do
    url "https://update.buhl-data.com/Updates/Steuer/2022/Mac/Aktuell/appcast-steuer.xml"
    regex(%r{/v?(\d+(?:\.\d+)+[^/]*)/SteuerMac2022[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  # Renamed for consistency: app name differs in Finder to shell
  app "SteuerMac 2022.app", target: "WISO Steuer-Mac 2022.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2022",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2022",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2022",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2022.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2022.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2022",
  ]

  caveats do
    requires_rosetta
  end
end
