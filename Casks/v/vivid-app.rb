cask "vivid-app" do
  version "2.18"
  sha256 "055837e7dc2d1c0743b3c7d03c9ce40c61b839238ae12ce812fd3d9df51d9c6d"

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
