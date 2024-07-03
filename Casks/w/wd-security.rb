cask "wd-security" do
  version "2.1.2.144"
  sha256 :no_check

  url "https://downloads.wdc.com/wdapp/WD_Security_MACOS.zip",
      verified: "downloads.wdc.com/wdapp/"
  name "WD Security"
  desc "Lock and unlock Western Digital external drives with hardware encryption"
  homepage "https://support-en.wd.com/app/answers/detailweb/a_id/50696"

  livecheck do
    url "https://support-en.wd.com/app/answers/detailweb/a_id/29490"
    regex(/Version:?\s*(\d+(?:\.\d+)+)/i)
  end

  container nested: "WD Security Installer.dmg"

  installer script: {
    # replicating #{staged_path}/installer.sh
    executable: "#{staged_path}/exec/WD Security Installer.app/Contents/MacOS/WD Security Installer",
    args:       ["-install", "-silent"],
    sudo:       true,
  }

  uninstall launchctl: "com.wdc.WDPrivilegedHelper",
            script:    {
              # replicating #{staged_path}/installer.sh
              executable: "#{staged_path}/exec/WD Security Installer.app/Contents/MacOS/WD Security Installer",
              args:       ["-uninstall", "-silent"],
              sudo:       true,
            },
            delete:    [
              "/Library/LaunchDaemons/com.wdc.WDPrivilegedHelper.plist",
              "/Library/PrivilegedHelperTools/com.wdc.WDPrivilegedHelper",
            ]

  zap trash: "~/Library/Preferences/com.wdc.branded.security.plist"

  caveats do
    requires_rosetta
  end
end
