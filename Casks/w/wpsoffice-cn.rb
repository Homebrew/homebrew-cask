cask "wpsoffice-cn" do
  arch arm: "arm64", intel: "x64"

  version "12.1.25867"
  sha256 arm:   "adb1f2fc5a7acbb605d5e60b0589ba8d6d9de3b8dac99f823d51b793e2c2d5f5",
         intel: "f72580c45162eaa99b56843c142cbcd5c2fbb0eeaf0e870a5bc094ef88f110e3"

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
