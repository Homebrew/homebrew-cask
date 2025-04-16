cask "wwdc" do
  version "7.5,1044"
  sha256 "539aead52153a6decde115ba75f5a60848cbbdbd7bca3472347e5fc9d449d20c"

  url "https://github.com/insidegui/WWDC/releases/download/#{version.csv.first}/WWDC_v#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/insidegui/WWDC/"
  name "WWDC"
  desc "Allows access to WWDC livestreams, videos and sessions"
  homepage "https://wwdc.io/"

  livecheck do
    url "https://github.com/insidegui/WWDC/raw/master/Releases/appcast_v5.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "WWDC.app"

  zap trash: [
    "~/Library/Application Support/io.wwdc.app",
    "~/Library/Application Support/io.wwdc.app.TranscriptIndexingService",
    "~/Library/Application Support/WWDC",
    "~/Library/Preferences/io.wwdc.app.plist",
  ]
end
