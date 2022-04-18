cask "vivid" do
  version "1.2.1,18"
  sha256 "e4352bb2c2c18374a52be94e0fbb23ce84263ddedc6eb36209b0e31afbe2a794"

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
