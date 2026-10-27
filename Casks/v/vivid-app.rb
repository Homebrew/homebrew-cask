cask "vivid-app" do
  version "2.19"
  sha256 "01ce49846617a5ba96158b86dc4bf6be3e3ee744fee100c4d29c205b5c0d7d53"

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
