cask "wacom-tablet" do
  version "6.4.2-1"
  sha256 "fcc5b98e21234903e25f8aff618b5b98e5df3075086884ec15fd18cb2c87d7ee"

  url "https://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name "Wacom Tablet"
  desc "Resources for Wacom tablets"
  homepage "https://www.wacom.com/en-us/support/product-support/drivers"

  livecheck do
    url :homepage
    regex(%r{/WacomTablet[._-]?v?(\d+(?:\.\d+)+(?:[_-]\d+)?)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  pkg "Install Wacom Tablet.pkg"

  uninstall pkgutil:   "com.wacom.TabletInstaller",
            quit:      "com.wacom.WacomTouchDriver",
            launchctl: [
              "com.wacom.DataStoreMgr",
              "com.wacom.IOManager",
              "com.wacom.TabletDriver*",
              "com.wacom.UpgradeHelper*",
              "com.wacom.UpdateHelper",
              "com.wacom.WacomCenter*",
              "com.wacom.WacomExperienceProgram*",
              "com.wacom.wacomtablet",
            ]

  zap trash: [
    "~/Library/Application Scripts/*.com.wacom.WacomTabletDriver",
    "~/Library/Application Scripts/com.wacom.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wacom.wacomexperienceprogram.sfl2",
    "~/Library/Containers/com.wacom.*",
    "~/Library/Group Containers/*.com.wacom.WacomTabletDriver",
    "~/Library/Group Containers/com.wacom.TabletDriver",
  ]
end
