cask "wpsoffice-cn" do
  arch arm: "arm64", intel: "x64"

  version "12.1.28496"
  sha256 arm:   "15fd015f8349325e9e512221a0cc6857f3a4a98ea3b8f9f95e8c4ed603e5a564",
         intel: "46b6fed0812bf3155b2e27a60b21877337d4a683cb004580556da02514673281"

  url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version}/WPS_Office_#{version}(#{version.patch})_#{arch}.dmg"
  name "WPS Office"
  desc "All-in-one office service platform in Chinese"
  homepage "https://mac.wps.cn/"

  livecheck do
    url :homepage
    regex(%r{v?(\d+(?:\.\d+)+)/v?\d+(?:\.\d+)+}i)
  end

  conflicts_with cask: "wpsoffice"
  depends_on :macos

  app "wpsoffice.app"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.FinderSync",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.recentfiles",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.WPSFinderMenu",
    "~/Library/Application Scripts/YK4WKE5WAM.wpsoffice",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.FinderSync",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.recentfiles",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.WPSFinderMenu",
    "~/Library/Containers/YK4WKE5WAM.wpsoffice",
  ]
end
