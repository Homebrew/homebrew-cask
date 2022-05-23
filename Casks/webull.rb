cask "webull" do
  if Hardware::CPU.intel?
    version "5.10.0"
    sha256 "4c4c641149ccab2701f19f154aa9ace2c8570423a676246db04582c4889ef767"
  else
    version "5.9.0"
    sha256 "f93d33869f5f76fec7f1f65f73e38703e72391d2051fcaf928ac36802d7dbd05"
  end

  dl_arch = Hardware::CPU.intel? ? "us" : "u_M1"
  url "https://u1sweb.webullfinance.com/us/desktop/Webull%20Desktop%20#{version}_#{dl_arch}.dmg",
      verified: "u1sweb.webullfinance.com"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  livecheck_arch = Hardware::CPU.intel? ? "qt_mac_global" : "qt_m1_global"
  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=#{livecheck_arch}&osv=10.15"
    strategy :page_match do |page|
      JSON.parse(page)["latestAppVersion"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
