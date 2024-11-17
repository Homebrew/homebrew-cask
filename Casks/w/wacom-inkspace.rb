cask "wacom-inkspace" do
  version "3.0.8"
  sha256 "03e4e283538481ebbb27a7c961c9f49c7f57ab4c1594aa910fa6d38c1f5976d6"

  url "https://cdn.wacom.com/i/m/mac/wacominkspaceappsetup-#{version}.dmg"
  name "Wacom Inkspace"
  homepage "https://www.wacom.com/en-us/products/inkspace"

  livecheck do
    url "https://www.wacom.com/en-us/overlays/products/wacom-inkspace-2019"
    regex(/href=.*?wacominkspaceappsetup[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Wacom Inkspace App.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.wacom-inkspace-app.sfl*",
    "~/Library/Application Support/Wacom InkSpace App",
    "~/Library/Caches/com.electron.wacom-inkspace-app",
    "~/Library/Caches/com.electron.wacom-inkspace-app.ShipIt",
    "~/Library/HTTPStorages/com.electron.wacom-inkspace-app",
    "~/Library/Preferences/com.electron.wacom-inkspace-app.plist",
    "~/Library/Saved Application State/com.electron.wacom-inkspace-app.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
