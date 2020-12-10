cask "webex-teams" do
  version "40.12.0.17293"
  sha256 "3cc95a8f393ae89aecafc4842f4a306b4c4728eea898263f3081b49e237e2fad"

  url "https://binaries.webex.com/WebexTeamsDesktop-MACOS-Gold/WebexTeams.dmg"
  name "Webex Teams"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.webex.com/"

  app "Webex Teams.app"

  uninstall signal: [
    ["TERM", "Cisco-Systems.Spark"],
  ]

  zap trash: [
    "~/Library/Preferences/Cisco-Systems.Spark.plist",
    "~/Library/Caches/Cisco-Systems.Spark",
    "~/Library/Logs/SparkMacDesktop",
  ]
end
