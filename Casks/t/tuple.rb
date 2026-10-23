cask "tuple" do
  version "3.3.13,2026-10-23,2a9ce032be"
  sha256 "0bbc10957fa4d44c1e0df77b99b51a939f2049460147b82de6cb5a33e0597db8"

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
