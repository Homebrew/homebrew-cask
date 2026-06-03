cask "wpsoffice-cn" do
  arch arm: "arm64", intel: "x64"

  version "12.1.26016"
  sha256 arm:   "be54fde913aa07fe89b7fc7ad197a1e81e0cb4dd8d1b29f93d6bfda4d69f17ff",
         intel: "a728d6d5c50a5fb451143428da29362f9edf2308b12e3d17a873184dee1a1378"

  url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version}/WPS_Office_#{version}(#{version.patch})_#{arch}.dmg",
      verified: "package.mac.wpscdn.cn/mac_wps_pkg/"
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
