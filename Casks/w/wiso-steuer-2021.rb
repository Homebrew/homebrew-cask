cask "wiso-steuer-2021" do
  # NOTE: "2021" is not a version number, but an intrinsic part of the product name
  version "28.16.4440-RC1"
  sha256 "a2b4ef4bd67b53109c557684dd773e860fa287257ad023ac1388395f0aa18172"

  url "https://update.buhl-data.com/Updates/Steuer/2021/Mac/Files/#{version}/SteuerMac2021-#{version.split("-").first}.dmg",
      verified: "update.buhl-data.com/Updates/Steuer/"
  name "WISO Steuer 2021"
  desc "Tax declaration for the fiscal year 2020"
  homepage "https://www.buhl.de/produkte/wiso-steuer-mac/"

  livecheck do
    url "https://update.buhl-data.com/Updates/Steuer/2021/Mac/Aktuell/appcast-steuer.xml"
    regex(%r{/v?(\d+(?:\.\d+)+[^/]*)/SteuerMac2021[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  # Renamed for consistency: app name differs in Finder to shell
  app "SteuerMac 2021.app", target: "WISO Steuer 2021.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2021",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2021",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2021",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2021.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2021.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2021",
  ]

  caveats do
    requires_rosetta
  end
end
