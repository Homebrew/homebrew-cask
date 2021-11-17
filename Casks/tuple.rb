cask "tuple" do
  version "0.91.0-2021-10-03-c4650309"
  sha256 "96b0ecc58298c3ff26eadb744d2e5fded73389997c4cbe4c2817b5c7ba72d0f5"

  url "https://d32ifkf9k9ezcg.cloudfront.net/production/sparkle/tuple-#{version}.zip",
      verified: "d32ifkf9k9ezcg.cloudfront.net/"
  name "Tuple"
  desc "Remote pair programming app"
  homepage "https://tuple.app/"

  livecheck do
    url "https://d32ifkf9k9ezcg.cloudfront.net/production/sparkle/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Tuple.app"

  uninstall quit:      "app.tuple.app",
            launchctl: "app.tuple.app-LaunchAtLoginHelper"

  zap trash: [
    "~/Library/Application Scripts/app.tuple.app-LaunchAtLoginHelper",
    "~/Library/Application Support/app.tuple.app",
    "~/Library/Caches/app.tuple.app",
    "~/Library/Caches/com.crashlytics.data/app.tuple.app",
    "~/Library/Caches/io.fabric.sdk.mac.data/app.tuple.app",
    "~/Library/Containers/app.tuple.app-LaunchAtLoginHelper",
    "~/Library/Preferences/app.tuple.app.plist",
    "~/Library/WebKit/app.tuple.app",
  ]
end
