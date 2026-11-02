cask "tuple" do
  version "3.3.18,2026-11-02,bd745dc83e"
  sha256 "7ed60c526d70a58c5f7a08e3db6e2f7c92dd3bd9330d28800ef8868043c35c5b"

  url "https://d32ifkf9k9ezcg.cloudfront.net/production/sparkle/tuple-#{version.tr(",", "-")}.zip"
  name "Tuple"
  desc "Remote pair programming app"
  homepage "https://tuple.app/"

  livecheck do
    url "https://d32ifkf9k9ezcg.cloudfront.net/production/sparkle/appcast.xml"
    regex(/^v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)[._-](\h+)$/i)
    strategy :sparkle do |item, regex|
      match = item.version.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Tuple.app"

  uninstall launchctl: "app.tuple.app-LaunchAtLoginHelper",
            quit:      "app.tuple.app"

  zap trash: [
    "~/Library/Application Scripts/app.tuple.app-LaunchAtLoginHelper",
    "~/Library/Application Scripts/app.tuple.log",
    "~/Library/Application Scripts/app.tuple.webcam-capturer",
    "~/Library/Application Scripts/DQYU7DR9Q7.app.tuple.app",
    "~/Library/Application Support/app.tuple.app",
    "~/Library/Application Support/Tuple",
    "~/Library/Caches/app.tuple.app",
    "~/Library/Caches/com.crashlytics.data/app.tuple.app",
    "~/Library/Caches/io.fabric.sdk.mac.data/app.tuple.app",
    "~/Library/Containers/app.tuple.app-LaunchAtLoginHelper",
    "~/Library/Containers/app.tuple.log",
    "~/Library/Containers/app.tuple.webcam-capturer",
    "~/Library/Group Containers/DQYU7DR9Q7.app.tuple.app",
    "~/Library/HTTPStorages/app.tuple.app",
    "~/Library/Preferences/app.tuple.app.plist",
    "~/Library/Preferences/app.tuple.app.web.plist",
    "~/Library/WebKit/app.tuple.app",
  ]
end
