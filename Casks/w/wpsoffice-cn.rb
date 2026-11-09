cask "wpsoffice-cn" do
  arch arm: "arm64", intel: "x64"

  version "12.1.29182"
  sha256 arm:   "688f2d3eab07857fedeac75d991a39228bd45f5299cc05d922aec45742f8e4d7",
         intel: "9a16c7bbfd7172f4a20e7f7f351bd7348b145678838c11a875964e144b5412b0"

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
