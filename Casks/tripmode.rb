cask "tripmode" do
  version "2.3.0-818"
  sha256 "db409c94cbe8f03749e38a9e4acf58efbf7363fb2ca3aff7a316574d9f2b2737"

  # tripmode-updates.ch/app was verified as official when first introduced to the cask
  url "https://tripmode-updates.ch/app/TripMode-#{version}-app.dmg"
  appcast "https://tripmode-updates.ch/app/appcast-v#{version.major}.xml"
  name "TripMode"
  homepage "https://www.tripmode.ch/"

  depends_on macos: ">= :yosemite"

  app "TripMode.app"

  uninstall signal:    ["TERM", "ch.tripmode.TripMode"],
            launchctl: [
              "ch.tripmode.nke.TripMode",
              "ch.tripmode.TripMode.HelperTool",
            ],
            delete:    "/Library/PrivilegedHelperTools/ch.tripmode.TripMode.HelperTool"

  zap trash: [
    "/Library/Application Support/Tripmode",
    "~/Library/Application Support/Tripmode",
    "~/Library/Caches/ch.tripmode.TripMode",
    "~/Library/Preferences/ch.tripmode.TripMode.plist",
  ]
end
