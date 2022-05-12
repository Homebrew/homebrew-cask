cask "teamdrive" do
  version "4.7.4.3178"
  sha256 "cef8bbb1c4d59fcf866c40eac9512d916982a009ec12efa509a32e21767c21a3"

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
