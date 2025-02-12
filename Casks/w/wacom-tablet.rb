cask "wacom-tablet" do
  version "6.4.9-2"
  sha256 "e5e1d000bb9560b72e144290f2eacfbb1174ac4ad01b484e1b4b983fe4642380"

  url "https://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name "Wacom Tablet"
  desc "Resources for Wacom tablets"
  homepage "https://www.wacom.com/en-us/support/product-support/drivers"

  livecheck do
    url :homepage
    regex(%r{/WacomTablet[._-]?v?(\d+(?:\.\d+)+(?:[_-]\d+[a-z]?)?)\.dmg}i)
  end

  depends_on macos: ">= :monterey"

  pkg "Install Wacom Tablet.pkg"

  uninstall launchctl: [
              "com.wacom.DataStoreMgr",
              "com.wacom.IOManager",
              "com.wacom.TabletDriver*",
              "com.wacom.UpdateHelper",
              "com.wacom.UpgradeHelper*",
              "com.wacom.WacomCenter*",
              "com.wacom.WacomExperienceProgram*",
              "com.wacom.wacomtablet",
            ],
            quit:      [
              "com.wacom.wacomtablet",
              "com.wacom.WacomTouchDriver",
            ],
            pkgutil:   "com.wacom.TabletInstaller"

  zap trash: [
    "~/Library/Application Scripts/*.com.wacom.WacomTabletDriver",
    "~/Library/Application Scripts/com.wacom.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wacom.wacomexperienceprogram.sfl*",
    "~/Library/Containers/com.wacom.*",
    "~/Library/Group Containers/*.com.wacom.WacomTabletDriver",
    "~/Library/Group Containers/com.wacom.TabletDriver",
  ]
end
