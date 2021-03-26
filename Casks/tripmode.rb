cask "tripmode" do
  if MacOS.version <= :catalina
    version "2.3.0,818"
    sha256 "db409c94cbe8f03749e38a9e4acf58efbf7363fb2ca3aff7a316574d9f2b2737"
    url "https://tripmode-updates.ch/app/TripMode-#{version.before_comma}-#{version.after_comma}-app.dmg",
        verified: "tripmode-updates.ch/"
  else
    version "3.0.3,1101"
    sha256 "44d808722a350b81e423cc655453cfdf7f4e020be5bf055227cb9940811e6b05"
    url "https://tripmode-updates.ch/app/TripMode-#{version.before_comma}-#{version.after_comma}.zip",
        verified: "tripmode-updates.ch/"
  end
  name "TripMode"
  homepage "https://www.tripmode.ch/"

  livecheck do
    url "https://tripmode-updates.ch/app/appcast-v#{version.major}.xml"
    strategy :sparkle
  end

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
