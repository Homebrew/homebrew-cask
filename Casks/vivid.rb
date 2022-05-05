cask "vivid" do
  version "1.5,21"
  sha256 "b97dd13d0db60df04ba752b6419e21799075da5febbc63ebc5bae4cd35d587f1"

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
