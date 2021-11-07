cask "teamdrive" do
  version "4.7.2.3014"
  sha256 "899960b99c3fd1e2224a6d0ad0299cde1e0aae55e6408da3a59f5de4c62de81d"

  url "https://download.teamdrive.net/#{version}/TMDR/mac/Install-TeamDrive-#{version}_TMDR.dmg",
      verified: "teamdrive.net/"
  name "TeamDrive"
  desc "Secure cloud storage service"
  homepage "https://www.teamdrive.com/"

  livecheck do
    url "https://teamdrive.com/en/downloads/"
    regex(/Install[._-]TeamDrive[._-](\d+(?:\.\d+)*)[._-]TMDR\.dmg/i)
  end

  installer script: {
    executable: "Install-TeamDrive-#{version}_TMDR.app/Contents/MacOS/osx-x86_64",
    args:       ["--unattendedmodeui", "none", "--mode", "unattended"],
  }

  uninstall script: {
    executable: "/Applications/TeamDrive/uninstall.app/Contents/MacOS/osx-x86_64",
    args:       ["--mode", "unattended"],
  },
            signal: [
              ["QUIT", "com.teamdrive.teamdrive3"],
              ["KILL", "com.teamdrive.teamdrive3"],
              ["QUIT", "com.teamdrive.teamdrive3.FinderExt"],
              ["KILL", "com.teamdrive.teamdrive3.FinderExt"],
              ["QUIT", "com.teamdrive.teamdrive3.MenuExt"],
              ["KILL", "com.teamdrive.teamdrive3.MenuExt"],
            ]

  zap trash: [
    "~/Library/Application Scripts/com.teamdrive.teamdrive3.FinderExt",
    "~/Library/Application Support/teamdrive",
    "~/Library/Caches/teamdrive",
    "~/Library/Containers/com.teamdrive.teamdrive3.FinderExt",
    "~/Library/Group Containers/com.teamdrive.teamdrive3.finderExt",
    "~/Library/Preferences/com.teamdrive.TeamDrive.plist",
    "~/Library/Preferences/com.teamdrive.teamdrive3.plist",
    "~/Library/Saved Application State/com.teamdrive.teamdrive3.savedState",
    "/Users/Shared/teamdrive.fsfilter",
    "/Users/Shared/teamdrive.ini",
    "~/.teamdrive",
  ]
end
