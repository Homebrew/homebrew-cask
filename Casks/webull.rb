cask "webull" do
  dl_arch, livecheck_arch = Hardware::CPU.intel? ? ["us", "qt_mac_global"] : ["us_M1", "qt_m1_global"]

  version "6.0.0"

  if Hardware::CPU.intel?
    sha256 "12ea140e53148150d990459db08af969d51950673aaf35da8d35e9293c78ff55"
  else
    sha256 "6217a66348807a612b0afb475fec5288752d232730321bc1442b854e9c5da6c8"
  end

  url "https://u1sweb.webullfinance.com/us/desktop/Webull%20Desktop%20#{version}_#{dl_arch}.dmg",
      verified: "u1sweb.webullfinance.com/us/desktop/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=#{livecheck_arch}&osv=10.15"
    strategy :page_match do |page|
      JSON.parse(page)["latestAppVersion"]
    end
  end

  depends_on macos: ">= :sierra"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
