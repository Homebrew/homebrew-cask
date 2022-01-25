cask "webull" do
  version "5.6.6"
  sha256 "23a7a94b26d8b151d665c5cb57498c27f2761e22b73223091747f731efe80b5f"

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
