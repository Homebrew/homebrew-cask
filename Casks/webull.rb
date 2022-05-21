cask "webull" do
  version "5.10.0"
  sha256 "4c4c641149ccab2701f19f154aa9ace2c8570423a676246db04582c4889ef767"

  url "https://u1sweb.webullfinance.com/us/desktop/Webull%20Desktop%20#{version}_us.dmg",
      verified: "u1sweb.webullfinance.com"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=qt_mac_global"
    strategy :page_match do |page|
      JSON.parse(page)["latestAppVersion"]
    end
  end

  depends_on macos: ">= :sierra"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
