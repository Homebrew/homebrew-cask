cask "tripmode" do
  if MacOS.version <= :catalina
    version "2.3.0,818"
    sha256 "db409c94cbe8f03749e38a9e4acf58efbf7363fb2ca3aff7a316574d9f2b2737"

    url "https://tripmode-updates.ch/app/TripMode-#{version.before_comma}-#{version.after_comma}-app.dmg",
        verified: "tripmode-updates.ch/"

    livecheck do
      skip
    end
  else
    version "3.0.5,1138"
    sha256 "9070f88184006f86d443e93d0c7c0a6e4182c39f6a0304f6c3b48f8dcef3d9f2"

    url "https://tripmode-updates.ch/app/TripMode-#{version.before_comma}-#{version.after_comma}.zip",
        verified: "tripmode-updates.ch/"

    livecheck do
      url "https://tripmode-updates.ch/app/appcast-v#{version.major}.xml"
      strategy :sparkle
    end
  end

  name "TripMode"
  desc "Control your data usage on slow or expensive networks"
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
