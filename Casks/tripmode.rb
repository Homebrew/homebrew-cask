cask "tripmode" do
  if MacOS.version <= :catalina
    version "2.3.0,818"
    sha256 "db409c94cbe8f03749e38a9e4acf58efbf7363fb2ca3aff7a316574d9f2b2737"
    url "https://tripmode-updates.ch/app/TripMode-#{version.before_comma}-#{version.after_comma}-app.dmg",
        verified: "tripmode-updates.ch/"
  else
    version "3.0.0,1023"
    sha256 "8c684785c7e91847cc998355203712c515b2ce4629d68fd5e559a5587c4a60a9"
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
