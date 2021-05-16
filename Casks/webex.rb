cask "webex" do
  version "41.5.0.18815"
  sha256 :no_check

  url "https://binaries.webex.com/WebexTeamsDesktop-MACOS-Gold/Webex.dmg"
  name "Webex Teams"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.webex.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Webex.app"

  uninstall signal: [
    ["TERM", "Cisco-Systems.Spark"],
  ]

  zap trash: [
    "~/Library/Preferences/Cisco-Systems.Spark.plist",
    "~/Library/Caches/Cisco-Systems.Spark",
    "~/Library/Logs/SparkMacDesktop",
  ]
end
