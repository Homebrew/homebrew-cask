cask "vivid-app" do
  version "2.14"
  sha256 "8980bbdc432d51042fe2996f0fd5f20433264b0d87b05feb9fa5d1f5273311c6"

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
