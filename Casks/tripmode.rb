cask "tripmode" do
  on_catalina :or_older do
    version "2.3.0,818"
    sha256 "db409c94cbe8f03749e38a9e4acf58efbf7363fb2ca3aff7a316574d9f2b2737"

    url "https://tripmode-updates.ch/app/TripMode-#{version.csv.first}-#{version.csv.second}-app.dmg",
        verified: "tripmode-updates.ch/app/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.2.1,1370"
    sha256 "ee9221ac098bad74b98f657ab91b5ca2bb0244aa516b244b2dba2cd9bb681e07"

    url "https://tripmode-updates.ch/app/TripMode-#{version.csv.first}-#{version.csv.second}.zip",
        verified: "tripmode-updates.ch/app/"

    depends_on macos: ">= :big_sur"

    livecheck do
      url "https://tripmode-updates.ch/app/appcast-v#{version.major}.xml"
      strategy :sparkle
    end
  end

  name "TripMode"
  desc "Control your data usage on slow or expensive networks"
  homepage "https://www.tripmode.ch/"

  auto_updates true

  app "TripMode.app"

  uninstall signal:    ["TERM", "ch.tripmode.TripMode"],
            launchctl: [
              "ch.tripmode.nke.TripMode",
              "ch.tripmode.TripMode.HelperTool",
            ],
            delete:    "/Library/PrivilegedHelperTools/ch.tripmode.TripMode.HelperTool"

  zap trash: [
    "/Library/Application Support/Tripmode",
    "~/Library/Application Scripts/com.alix-sarl.TripMode",
    "~/Library/Application Scripts/P39EL2R8C4.com.alix-sarl.TripMode",
    "~/Library/Application Support/Tripmode",
    "~/Library/Caches/ch.tripmode.TripMode",
    "~/Library/Caches/com.apple.helpd/Generated/ch.tripmode.TripMode.help*#{version.csv.first}",
    "~/Library/Group Containers/P39EL2R8C4.com.alix-sarl.TripMode",
    "~/Library/Preferences/ch.tripmode.TripMode.plist",
  ]
end
