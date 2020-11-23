cask "transocks" do
  version "3.0.7"
  sha256 "a5cc6ae42c1f421e39225510a15ddd5e509b93c7b1adeeebcf0a749315b8c4c0"

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
