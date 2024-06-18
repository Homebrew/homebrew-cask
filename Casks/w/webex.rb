cask "webex" do
  arch arm: "Desktop-MACOS-Apple-Silicon", intel: "TeamsDesktop-MACOS"

  version "44.6.0.29928"
  sha256 :no_check

  url "https://binaries.webex.com/Webex#{arch}-Gold/Webex.dmg"
  name "Webex Teams"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.webex.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Webex.app"

  uninstall signal: ["TERM", "Cisco-Systems.Spark"]

  zap trash: [
    "~/Library/Application Scripts/com.cisco.webex.Cisco-WebEx-Start.CWSSafariExtension",
    "~/Library/Application Scripts/group.com.cisco.webex.meetings",
    "~/Library/Application Support/Cisco Spark",
    "~/Library/Application Support/Cisco/WebEx Meetings",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cisco.webex.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/webex-pt.webexapplauncher.sfl*",
    "~/Library/Application Support/WebEx Folder",
    "~/Library/Application Support/Webex Meetings",
    "~/Library/Caches/Cisco-Systems.Spark",
    "~/Library/Caches/com.cisco.webex.*",
    "~/Library/Caches/com.webex.meetingmanager",
    "~/Library/Containers/com.cisco.webex.*",
    "~/Library/Group Containers/group.com.cisco.webex.meetings",
    "~/Library/HTTPStorages/com.cisco.webex.*",
    "~/Library/HTTPStorages/com.webex.*",
    "~/Library/HTTPStorages/WebEx-PT.webexAppLauncher",
    "~/Library/Logs/SparkMacDesktop",
    "~/Library/Logs/Webex Meetings",
    "~/Library/Logs/webexmta",
    "~/Library/Preferences/Cisco-Systems.Spark.plist",
    "~/Library/Preferences/com.cisco.meetings.shortcut.plist",
    "~/Library/Preferences/com.cisco.webex.*",
    "~/Library/Preferences/com.webex.*",
    "~/Library/Saved Application State/Cisco-Systems.Spark.savedState",
    "~/Library/Saved Application State/com.webex.meetingmanager.savedState",
    "~/Library/WebKit/Cisco-Systems.Spark",
    "~/Library/WebKit/com.webex.meetingmanager",
  ]
end
