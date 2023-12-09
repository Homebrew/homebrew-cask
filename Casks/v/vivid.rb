cask "vivid" do
  version "2.8"
  sha256 "acc10ba7ec6af18adc65cfe4cf19af9b77c445c05552d78cd8be860c716e15ac"

  url "https://lumen-digital.com/apps/vivid/releases/Vivid#{version}.zip",
      verified: "lumen-digital.com/apps/vivid/releases/"
  name "Vivid"
  desc "Adaptive brightness for displays"
  homepage "https://www.getvivid.app/"

  livecheck do
    url "https://lumen-digital.com/apps/vivid/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Vivid.app"

  zap trash: [
    "~/Library/HTTPStorages/com.goodsnooze.vivid",
    "~/Library/Preferences/com.goodsnooze.vivid.plist",
  ]
end
