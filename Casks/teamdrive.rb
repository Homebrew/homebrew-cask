cask "teamdrive" do
  version "4.7.5.3196"
  sha256 "ad4a1f41aa5fa0d3c692aebac6214113537a30dd763f410aad4cfdd100f4f919"

  url "https://download.teamdrive.net/#{version}/TMDR/mac/Install-TeamDrive-#{version}_TMDR.dmg",
      verified: "teamdrive.net/"
  name "TeamDrive"
  desc "Secure cloud storage service"
  homepage "https://www.teamdrive.com/"

  livecheck do
    url "https://teamdrive.com/en/downloads/"
    regex(/Install[._-]TeamDrive[._-]v?(\d+(?:\.\d+)+)[._-]TMDR\.dmg/i)
  end

  depends_on macos: ">= :mojave"

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
    "/Users/Shared/teamdrive.fsfilter",
    "/Users/Shared/teamdrive.ini",
    "~/.teamdrive",
    "~/Library/Application Scripts/com.teamdrive.teamdrive3.FinderExt",
    "~/Library/Application Support/teamdrive",
    "~/Library/Caches/teamdrive",
    "~/Library/Containers/com.teamdrive.teamdrive3.FinderExt",
    "~/Library/Group Containers/com.teamdrive.teamdrive3.finderExt",
    "~/Library/Preferences/com.teamdrive.TeamDrive.plist",
    "~/Library/Preferences/com.teamdrive.teamdrive3.plist",
    "~/Library/Saved Application State/com.teamdrive.teamdrive3.savedState",
  ]
end
