cask "wiso-steuer-2023" do
  # NOTE: "2023" is not a version number, but an intrinsic part of the product name
  version "30.14.4340"
  sha256 "fc59b630ca312d6fae28804f21e0c1464c83b42991b3fb5eea8bfba564df1d6b"

  url "https://update.buhl-data.com/Updates/Steuer/2023/Mac/Files/#{version}-RC1/SteuerMac2023-#{version}.dmg",
      verified: "update.buhl-data.com/Updates/Steuer/"
  name "WISO Steuer 2023"
  desc "Tax declaration for the fiscal year 2022"
  homepage "https://www.buhl.de/download/wiso-steuer-2023/"

  livecheck do
    url "https://update.buhl-data.com/Updates/Steuer/2023/Mac/Aktuell/appcast-steuer.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SteuerMac 2023.app"

  zap trash: [
    "~/Library/Application Support/BuhlData.com/WISOsteuerMac2023",
    "~/Library/Caches/com.BuhlData.WISOsteuerMac2023",
    "~/Library/HTTPStorages/com.BuhlData.WISOsteuerMac2023",
    "~/Library/Preferences/com.buhldata.WISOsteuerMac2023.plist",
    "~/Library/Saved Application State/com.BuhlData.WISOsteuerMac2023.savedState",
    "~/Library/WebKit/com.BuhlData.WISOsteuerMac2023",
  ]

  caveats do
    requires_rosetta
  end
end
