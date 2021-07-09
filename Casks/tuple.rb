cask "tuple" do
  version "0.87.0-2021-06-21-f6705f82"
  sha256 "230aedffa48d22c5e716b431e282cae210f4ac14d2cb378dcb9f11de59136d36"

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
