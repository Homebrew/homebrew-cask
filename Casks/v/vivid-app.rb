cask "vivid-app" do
  version "2.19.1"
  sha256 "91a44f63ebe60cb36f4bb2c340dd0785e260a50b8056e0c777f6e60f26089ab5"

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
    "~/Library/Caches/bugsnag-shared-com.goodsnooze.vivid",
    "~/Library/Caches/com.goodsnooze.vivid",
    "~/Library/HTTPStorages/com.goodsnooze.vivid",
    "~/Library/Preferences/com.goodsnooze.vivid.plist",
  ]
end
