cask "vivid-app" do
  version "2.19.2"
  sha256 "3837b010a9ef854879b0358d3c93d5dd8a84abcc3d6623126da48013e6f3978d"

  url "https://lumen-digital.com/apps/vivid/releases/Vivid#{version}.zip"
  name "Vivid"
  desc "Adaptive brightness for displays"
  homepage "https://www.getvivid.app/"

  livecheck do
    url "https://lumen-digital.com/apps/vivid/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :monterey

  app "Vivid.app"

  zap trash: [
    "~/Library/Application Support/bugsnag-shared-com.goodsnooze.vivid",
    "~/Library/Application Support/Vivid",
    "~/Library/Caches/bugsnag-shared-com.goodsnooze.vivid",
    "~/Library/Caches/com.goodsnooze.vivid",
    "~/Library/HTTPStorages/com.goodsnooze.vivid",
    "~/Library/Preferences/com.goodsnooze.vivid.plist",
  ]
end
