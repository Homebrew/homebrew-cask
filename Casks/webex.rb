cask "webex" do
  arch = Hardware::CPU.intel? ? "TeamsDesktop-MACOS" : "Desktop-MACOS-Apple-Silicon"

  version "42.1.0.21190"
  sha256 :no_check

  url "https://binaries.webex.com/Webex#{arch}-Gold/Webex.dmg"
  name "Webex Teams"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.webex.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Webex.app"

  uninstall signal: ["TERM", "Cisco-Systems.Spark"]

  zap trash: [
    "~/Library/Caches/Cisco-Systems.Spark",
    "~/Library/Logs/SparkMacDesktop",
    "~/Library/Preferences/Cisco-Systems.Spark.plist",
  ]
end
