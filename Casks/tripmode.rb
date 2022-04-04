cask "tripmode" do
  if MacOS.version <= :catalina
    version "2.3.0,818"
    sha256 "db409c94cbe8f03749e38a9e4acf58efbf7363fb2ca3aff7a316574d9f2b2737"

    url "https://tripmode-updates.ch/app/TripMode-#{version.csv.first}-#{version.csv.second}-app.dmg",
        verified: "tripmode-updates.ch/"

    livecheck do
      skip
    end
  else
    version "3.1.3,1303"
    sha256 "93a3d1fa2ba00053c144f0224fbc5054ba419a42bd0169d509e13c7a9f805727"

    url "https://tripmode-updates.ch/app/TripMode-#{version.csv.first}-#{version.csv.second}.zip",
        verified: "tripmode-updates.ch/"

    livecheck do
      url "https://tripmode-updates.ch/app/appcast-v#{version.major}.xml"
      strategy :sparkle
    end
  end

  name "TripMode"
  desc "Control your data usage on slow or expensive networks"
  homepage "https://www.tripmode.ch/"

  auto_updates true
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
    "~/Library/Application Scripts/com.alix-sarl.TripMode",
    "~/Library/Application Scripts/P39EL2R8C4.com.alix-sarl.TripMode",
    "~/Library/Application Support/Tripmode",
    "~/Library/Caches/com.apple.helpd/Generated/ch.tripmode.TripMode.help*#{version.csv.first}",
    "~/Library/Caches/ch.tripmode.TripMode",
    "~/Library/Group Containers/P39EL2R8C4.com.alix-sarl.TripMode",
    "~/Library/Preferences/ch.tripmode.TripMode.plist",
  ]
end
