cask "teamdrive" do
  version "4.6.12.2788"
  sha256 "5e7d84ba4a184438dddbbbd25fc67b0adc16ef2dcecf8e4051b369d9252ad884"

  url "https://download.teamdrive.net/#{version.major_minor}.#{version.split(".").last}/TMDR/mac-10.15.7/Install-TeamDrive-#{version}_TMDR.dmg",
      verified: "teamdrive.net/"
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
