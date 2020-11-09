cask "teamdrive" do
  version "4.6.11.2725"
  sha256 "176328653faf9a9ee2e723a6b0c5ee03667b48b6e98c2f90d75ae48a5a1c06e7"

  # teamdrive.net/ was verified as official when first introduced to the cask
  url "https://download.teamdrive.net/#{version.major_minor}.#{version.split(".").last}/TMDR/mac-10.14.6/Install-TeamDrive-#{version}_TMDR.dmg"
  appcast "https://teamdrive.com/en/downloads/",
          must_contain: version.major_minor_patch
  name "TeamDrive"
  desc "Secure cloud storage service"
  homepage "https://www.teamdrive.com/"

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
end
