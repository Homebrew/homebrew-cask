cask "transocks" do
  version "3.0.9,872"
  sha256 "cfdcdf99b84b659f08ca4debbaf0c3d31126201acc753ebd6461abfdbdd04fc1"

  url "https://download.chuansuo.io/transocks/download/mac/#{version.csv.first}/Transocks_official_v#{version.csv.first}.dmg",
      verified: "download.chuansuo.io/"
  name "Transocks"
  desc "Tool to optimize access to various video music resources"
  homepage "https://www.transocks.com/"

  livecheck do
    url "https://www.transocks.org/updateInfo/official_update.xml"
    strategy :sparkle
  end

  app "穿梭Transocks.app"

  uninstall trash: [
    "/Library/LaunchDaemons/com.transocks.mac.daemon.plist",
    "/Library/PrivilegedHelperTools/com.transocks.mac.daemon",
  ]

  zap trash: [
    "~/Library/Caches/com.transocks.mac.signed",
    "~/Library/Logs/DiagnosticReports/穿梭Transocks*",
    "~/Library/Application Support/CrashReporter/穿梭Transocks*",
    "/Library/Application Support/CrashReporter/穿梭Transocks*",
    "~/Library/Preferences/com.transocks.mac.signed.plist",
    "~/Library/Saved Application State/com.transocks.mac.signed.savedState",
  ]
end
