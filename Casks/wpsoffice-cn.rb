cask "wpsoffice-cn" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  version "4.2.1,6777"

  if Hardware::CPU.intel?
    sha256 "307e70de26a8d0e343107c1b36017b95b3cdb325025b4dd705e0c744d419e3e5"
  else
    sha256 "41982ab000f8c5bc6c17c62991b7ce133fd774cbd02a97d0d864007b8928dfed"
  end

  url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version.csv.first}/WPS_Office_#{version.csv.first}(#{version.csv.second})_#{arch}.dmg",
      verified: "package.mac.wpscdn.cn/mac_wps_pkg/"
  name "WPS Office"
  desc "All-in-one office service platform in Chinese"
  homepage "https://mac.wps.cn/"

  livecheck do
    url :homepage
    regex(/href=.*?WPS_Office[._-]v?(\d+(?:\.\d+)+)[_(](\d+)[_)]*#{arch}\.dmg/i)
    strategy :page_match do |page|
      page.scan(regex).map {|match| "#{match[0]},#{match[1]}"}
    end
  end

  auto_updates true
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
