cask "wpsoffice-cn" do
  arch arm: "arm64", intel: "x64"

  version "12.1.29697"
  sha256 arm:   "78e7d9d71d295b18ed80f9c062b54d6bbed2eabfd21f969030082e439b73a792",
         intel: "60ea6fcee15680ac57d3d406d6a11053f994dc9c6544e295b978eca3d5c9be7c"

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
    "~/Library/Group Containers/YK4WKE5WAM.wpsoffice",
  ]
end
