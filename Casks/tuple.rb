cask "tuple" do
  version "0.81.2-2020,11-10-2dc5e15d"
  sha256 "8f2ad0d5b0e33ba08fd2ccffee9ea07bddc6d78bed4c35d2c46ed303e6779fd7"

  # s3.us-east-2.amazonaws.com/tuple-releases/ was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml"
  name "Tuple"
  desc "Remote pair programming app"
  homepage "https://tuple.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
