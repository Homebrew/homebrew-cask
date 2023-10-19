cask "wacom-tablet" do
  version "6.4.4-2"
  sha256 "8d7f113afeea35267fca0093e77f9978e92380ea267c47111027f74ec79c151d"

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
