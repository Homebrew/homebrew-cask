cask "transocks" do
  version "3.0.6"
  sha256 "69b638f28f02806fd380d265979e3d3a7206faf70a8672f3bae3af6ebdbd5e91"

  url "https://www.transocks.com/download/mac/Transocks_Official_v#{version}.dmg"
  appcast "https://www.transocks.org/updateInfo/Original_update.xml"
  name "Transocks"
  desc "Tool to optimize access to various video music resources"
  homepage "https://www.transocks.com/"

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
