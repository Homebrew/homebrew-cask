cask "transocks" do
  version "3.0.8,871"
  sha256 "ce615487959c4a069aaaccfcd2f0717633bbfcedd78dab48ac959a36abff36ad"

  url "https://www.transocks.com/download/mac/Transocks_Official_v#{version.before_comma}.dmg"
  name "Transocks"
  desc "Tool to optimize access to various video music resources"
  homepage "https://www.transocks.com/"

  livecheck do
    url "https://www.transocks.org/updateInfo/Original_update.xml"
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
