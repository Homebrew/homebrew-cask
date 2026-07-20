cask "wiso-steuer-2020" do
  # NOTE: "2020" is not a version number, but an intrinsic part of the product name
  version "10.21.5040-RC1"
  sha256 "6bfc96a1aedff7a9e21f576a075dcc11fd960570efcea180499215cf189c412e"

  url "https://update.buhl-data.com/Updates/Steuer/2020/Mac/Files/#{version}/steuerMac2020-#{version.split("-").first}.dmg",
      verified: "update.buhl-data.com/Updates/Steuer/"
  name "WISO Steuer 2020"
  desc "Tax declaration for the fiscal year 2019"
  homepage "https://www.buhl.de/produkte/wiso-steuer-mac/"

  livecheck do
    url "https://update.buhl-data.com/Updates/Steuer/2020/Mac/Aktuell/appcast-steuer.xml"
    regex(%r{/v?(\d+(?:\.\d+)+[^/]*)/SteuerMac2020[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on :macos

  # Renamed for consistency: app name differs in Finder to shell
  app "SteuerMac 2020.app", target: "WISO Steuer 2020.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2020",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2020",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2020",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2020.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2020.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2020",
  ]

  caveats do
    requires_rosetta
  end
end
