cask "wpsoffice-cn" do
  arch arm: "arm64", intel: "x64"

  version "6.2.0,8297"
  sha256 arm:   "3fc61b805b13a72a5aadcb05525f27e27ffdc21182687121b97de37f669171dd",
         intel: "fb523ca69c958d9a1448c7d16b7675a593e988dab71663cf66eb4af70a1ad86e"

  url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version.csv.first}/WPS_Office_#{version.csv.first}(#{version.csv.second})_#{arch}.dmg",
      verified: "package.mac.wpscdn.cn/mac_wps_pkg/"
  name "WPS Office"
  desc "All-in-one office service platform in Chinese"
  homepage "https://mac.wps.cn/"

  livecheck do
    url :homepage
    regex(%r{>\s+(\d+(?:\.\d+)+)[_(](\d+)[_)]/[\d.]+\s+<}i)
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
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.WPSFinderMenu",
    "~/Library/Application Scripts/YK4WKE5WAM.wpsoffice",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.FinderSync",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.recentfiles",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.WPSFinderMenu",
    "~/Library/Containers/YK4WKE5WAM.wpsoffice",
  ]
end
