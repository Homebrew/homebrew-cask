cask "vivid" do
  version "2.10.2"
  sha256 "d5a494f4fd52f0281664d8a75c953cd6fd9858913aa3c6e74a3279483e39c58c"

  url "https://lumen-digital.com/apps/vivid/releases/Vivid#{version}.zip",
      verified: "lumen-digital.com/apps/vivid/releases/"
  name "Vivid"
  desc "Adaptive brightness for displays"
  homepage "https://www.getvivid.app/"

  livecheck do
    url "https://lumen-digital.com/apps/vivid/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "Vivid.app"

  zap trash: [
    "~/Library/HTTPStorages/com.goodsnooze.vivid",
    "~/Library/Preferences/com.goodsnooze.vivid.plist",
  ]
end
