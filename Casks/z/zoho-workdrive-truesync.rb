cask "zoho-workdrive-truesync" do
  version "3.7.56"
  sha256 :no_check

  url "https://files-accl.zohopublic.com/public/tsbin/download/c488f53fb0fe339a8a3868a16d56ede6"
  name "Zoho WorkDrive TrueSync"
  desc "Sync files to/from Zoho WorkDrive"
  homepage "https://www.zoho.com/workdrive/truesync.html?src=zdocs"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  pkg "ZohoWorkDriveTS.pkg"

  uninstall launchctl: [
              "com.zoho.truesync.upgrader",
              "com.zoho.workdrivefs.Mounter.Helper",
            ],
            pkgutil:   "org.zoho.ZohoWorkDrive"

  zap trash: [
    "/Library/Application Support/zohotruesync",
    "/Library/PrivilegedHelperTools/com.zoho.workdrivefs.Mounter.Helper",
    "~/.zohoworkdrivets",
    "~/Library/Application Scripts/com.zohosync.truesync",
    "~/Library/Containers/com.zohosync.truesync",
    "~/Library/Preferences/org.zoho.ZohoWorkDriveTrueSync.plist",
  ]
end
