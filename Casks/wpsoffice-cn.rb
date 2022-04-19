cask "wpsoffice-cn" do
  version "4.2.0,6717"

  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "0e68e797253863fff96fc6f022657dab4914731ddaf4e8f32799be3bb6483a85"
    url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version.csv.first}/WPS_Office_#{version.csv.first}(#{version.csv.second})_#{arch}.dmg",
        verified: "package.mac.wpscdn.cn/mac_wps_pkg/"
  else
    sha256 "fc8b71c6a330792aa7c7d36ded9ee0636f3a3bd786d132840398e1ab56bdcf5f"
    url "https://package.mac.wpscdn.cn/mac_wps_pkg/SilentUpdate/WPS_Office_#{version.csv.first}_#{version.csv.second}_#{arch}.dmg",
        verified: "package.mac.wpscdn.cn/mac_wps_pkg/"
  end

  name "WPS Office"
  desc "All-in-one office service platform in Chinese"
  homepage "https://mac.wps.cn/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      v = page.match(/href=.*?WPS_Office[._-](\d+(?:\.\d+)+)(?=\(\d+\))/i)
      id = page.match(%r{\d+(?=\)/)}i)
      next if v.blank? || id.blank?

      "#{v},#{id}"
    end
  end

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
