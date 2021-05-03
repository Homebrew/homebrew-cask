cask "tuple" do
  version "0.85.1-2021-04-01-e0acf3ba"
  sha256 "02c37ed57c66f6540f6c0e94e2d0e1df55c1c270fb45bb47b1aa2c5d6ee5491f"

  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version}.zip",
      verified: "s3.us-east-2.amazonaws.com/tuple-releases/"
  name "Tuple"
  desc "Remote pair programming app"
  homepage "https://tuple.app/"

  livecheck do
    url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml"
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
