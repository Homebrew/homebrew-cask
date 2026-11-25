cask "wd-security" do
  version "2.1.6.434"
  sha256 :no_check

  url "https://downloads.wdc.com/wdapp/WD_Security_MACOS.zip"
  name "WD Security"
  desc "Lock and unlock Western Digital external drives with hardware encryption"
  homepage "https://support-en.wd.com/app/answers/detailweb/a_id/50696"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.westerndigital.WDSecurityInstaller"]&.short_version
    end
  end

  depends_on :macos
  container nested: "WD Security Installer.dmg"

  # The installer requires interactive admin authentication, even when run as root
  installer manual: "exec/WD Security Installer.app"

  uninstall launchctl: "com.wdc.WDPrivilegedHelper",
            script:    {
              executable:   "#{staged_path}/exec/WD Security Installer.app/Contents/MacOS/WD Security Installer",
              args:         ["-uninstall", "-silent"],
              sudo:         true,
              must_succeed: false,
            },
            delete:    [
              "/Applications/WD Security Uninstaller.app",
              "/Applications/WD Security.app",
              "/Library/LaunchDaemons/com.wdc.WDPrivilegedHelper.plist",
              "/Library/PrivilegedHelperTools/com.wdc.WDPrivilegedHelper",
            ]

  zap trash: "~/Library/Preferences/com.wdc.branded.security.plist"

  caveats do
    requires_rosetta
  end
end
