cask "ultdata" do
  version "10.0.3.4"
  sha256 :no_check

  url "https://download.tenorshare.com/downloads/ultdata-ios-mac.dmg"
  name "UltData"
  desc "iPhone data recovery software"
  homepage "https://www.tenorshare.com/products/iphone-data-recovery.html"

  livecheck do
    url :url
    strategy :extract_plist
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
