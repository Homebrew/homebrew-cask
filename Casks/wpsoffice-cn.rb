cask "wpsoffice-cn" do
  arch arm: "arm64", intel: "x64"

  version "5.0.0,7547"
  sha256 arm:   "48907e84ae9d262ee822503f3f9247fe9f1f81ca449864f9e485e0a0bcdd9b0c",
         intel: "ca78a1c5ca1258360d8b46a405b19277a968f641f6cb0a0949f01864fb7b1655"

  url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version.csv.first}/WPS_Office_#{version.csv.first}(#{version.csv.second})_#{arch}.dmg",
      verified: "package.mac.wpscdn.cn/mac_wps_pkg/"
  name "WPS Office"
  desc "All-in-one office service platform in Chinese"
  homepage "https://mac.wps.cn/"

  livecheck do
    url :homepage
    regex(/href=.*?WPS_Office[._-]v?(\d+(?:\.\d+)+)[_(](\d+)[_)]*#{arch}\.dmg/i)
    strategy :page_match do |page|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "wpsoffice"
  depends_on macos: ">= :sierra"

  app "wpsoffice.app"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.FinderSync",
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.recentfiles",
    "~/Library/Application Scripts/YK4WKE5WAM.wpsoffice",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.FinderSync",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.recentfiles",
    "~/Library/Containers/YK4WKE5WAM.wpsoffice",
  ]
end
