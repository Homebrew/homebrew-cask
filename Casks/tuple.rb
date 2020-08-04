cask "tuple" do
  version "0.78.0,2020-08-03-d7b49459"
  sha256 "165e4b5427f13898a7f48fda9cc4330f760e49c8e90056a80578c42b838fbe7e"

  # s3.us-east-2.amazonaws.com/tuple-releases/ was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml"
  name "Tuple"
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
