cask "tuple" do
  version "0.113.1,2024-02-29,b5eececbd"
  sha256 "10991ddae1355de195ae9fe3523787e298948c375a523e1dfd6ed971a9371c20"

  url "https://d32ifkf9k9ezcg.cloudfront.net/production/sparkle/tuple-#{version.tr(",", "-")}.zip",
      verified: "d32ifkf9k9ezcg.cloudfront.net/"
  name "Tuple"
  desc "Remote pair programming app"
  homepage "https://tuple.app/"

  livecheck do
    url "https://d32ifkf9k9ezcg.cloudfront.net/production/sparkle/appcast.xml"
    strategy :sparkle do |item|
      match = item.version.match(/^v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)[._-](\h+)$/i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Tuple.app"

  uninstall launchctl: "app.tuple.app-LaunchAtLoginHelper",
            quit:      "app.tuple.app"

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
