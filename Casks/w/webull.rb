cask "webull" do
  version "8.0.0,80000025"
  sha256 "ea5b5bed920a52a06568cc63d73ad971de1409ac44dc9e5082fc5b49efed4948"

  url "https://u1sweb.webullfintech.com/us/Webull%20Desktop_#{version.csv.first}_#{version.csv.second}_global_universalsigned.dmg",
      verified: "u1sweb.webullfintech.com/us/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://www.webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=qt_mac_global&osv=14"
    regex(/Webull%20Desktop[._-]v?(\d+(?:[._]\d+)+).*?\.dmg/i)
    strategy :json do |json, regex|
      json["upgradeUrl"]&.scan(regex)&.map { |match| match[0].tr("_", ",") }
    end
  end

  depends_on macos: ">= :catalina"

  app "Webull Desktop.app"

  zap trash: [
    "~/.config/Webull Desktop",
    "~/Library/Application Support/Webull Desktop",
    "~/Library/Preferences/com.webulldesktop.*",
    "~/Library/Saved Application State/com.webull.desktop.v1.savedState",
  ]
end
