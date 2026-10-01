cask "tuple" do
  version "3.3.7,2026-10-01,78d67a8884"
  sha256 "622692d33b7fa1259f90776ab964b7744c4974355e97d3ccab98289c21252536"

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
    "~/Library/Application Support/app.tuple.app",
    "~/Library/Caches/app.tuple.app",
    "~/Library/Caches/com.crashlytics.data/app.tuple.app",
    "~/Library/Caches/io.fabric.sdk.mac.data/app.tuple.app",
    "~/Library/Containers/app.tuple.app-LaunchAtLoginHelper",
    "~/Library/Preferences/app.tuple.app.plist",
    "~/Library/WebKit/app.tuple.app",
  ]
end
