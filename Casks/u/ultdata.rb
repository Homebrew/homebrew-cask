cask "ultdata" do
  version "1053"
  sha256 "1ecbd8c186d7e9c68bd5005de9fa3a135c5c86fc458a182953c05f2b778354e6"

  url "https://download.tenorshare.com/downloads/ultdata-ios-mac_#{version}.dmg"
  name "UltData"
  desc "iPhone data recovery software"
  homepage "https://www.tenorshare.com/products/iphone-data-recovery.html"

  livecheck do
    url :homepage
    regex(/href=.*?ultdata-ios-mac[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true

  app "UltData.app"

  zap trash: [
    "~/Library/Application Support/com.tenorshare.TenorshareUltData",
    "~/Library/Application Support/UltData",
    "~/Library/Caches/com.tenorshare.TenorshareUltData",
    "~/Library/Preferences/com.tenorshare.TenorshareUltData.plist",
    "~/Library/Saved Application State/com.tenorshare.TenorshareUltData.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
