cask "vivid" do
  version "2.9"
  sha256 "f864d540f8ec2add56590956bf33b9979302dec0314c69451274e0921172d291"

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
