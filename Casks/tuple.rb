cask "tuple" do
  version "0.86.2-2021-05-20-ab8f4799"
  sha256 "181ac5a81dbffa9f514fc76e3fc4003a53b91be05387519908c0696582d66e2a"

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
