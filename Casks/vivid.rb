cask "vivid" do
  version "2.4,35"
  sha256 "034dd5ecf2f898c6e6f1351064b86b43658a174d4e62c12a2f3e7e7d11568f05"

  url "https://lumen-digital.com/apps/vivid/releases/Vivid#{version.csv.first}.zip",
      verified: "https://lumen-digital.com/apps/vivid"
  name "Vivid"
  desc "Adaptive brightness for displays"
  homepage "https://www.getvivid.app/"

  livecheck do
    url "https://lumen-digital.com/apps/vivid/appcast.xml"
    strategy :sparkle
  end

  app "Vivid.app"

  zap trash: [
    "~/Library/HTTPStorages/com.goodsnooze.vivid",
    "~/Library/Preferences/com.goodsnooze.vivid.plist",
  ]
end
