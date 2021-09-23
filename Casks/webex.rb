cask "webex" do
  version "41.9.0.20091"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://binaries.webex.com/WebexTeamsDesktop-MACOS-Gold/Webex.dmg"
  else
    url "https://binaries.webex.com/WebexDesktop-MACOS-Apple-Silicon-Gold/Webex.dmg"
  end

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
    "~/Library/Caches/Cisco-Systems.Spark",
    "~/Library/Logs/SparkMacDesktop",
    "~/Library/Preferences/Cisco-Systems.Spark.plist",
  ]
end
