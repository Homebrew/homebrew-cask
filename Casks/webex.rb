cask "webex" do
  arch arm: "Desktop-MACOS-Apple-Silicon", intel: "TeamsDesktop-MACOS"

  version "43.4.0.25788"
  sha256 :no_check

  url "https://binaries.webex.com/Webex#{arch}-Gold/Webex.dmg"
  name "Webex Teams"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.webex.com/"

  livecheck do
    url "https://help.webex.com/en-us/article/mqkve8/Webex-App-%7C-Release-notes#"
    regex(/p["']>mac[-._—]?(\d+(?:\.\d+)*)</i)
  end

  auto_updates true

  app "Webex.app"

  uninstall signal: ["TERM", "Cisco-Systems.Spark"]

  zap trash: [
    "~/Library/Caches/Cisco-Systems.Spark",
    "~/Library/Logs/SparkMacDesktop",
    "~/Library/Preferences/Cisco-Systems.Spark.plist",
  ]
end
