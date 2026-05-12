cask "webull" do
  version "9.8.1,9000300054"
  sha256 "eaa9815319d322e5b4e7a968a503381b58d55fb8ab99f6e9e8e42103f4ca4f02"

  url "https://u1sweb.webullfintech.com/us/Webull%20Desktop_#{version.csv.first}_#{version.csv.second}_global_universalsigned.dmg",
      verified: "u1sweb.webullfintech.com/us/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://www.webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=qt_mac_global"
    regex(/Webull%20Desktop[._-]v?(\d+(?:[._]\d+)+).*?\.dmg/i)
    strategy :json do |json, regex|
      json["upgradeUrl"]&.scan(regex)&.map { |match| match[0].tr("_", ",") }
    end
  end

  depends_on :macos

  app "Webull Desktop.app"

  zap trash: [
    "~/.config/Webull Desktop",
    "~/Library/Application Support/Webull Desktop",
    "~/Library/Preferences/com.webulldesktop.*",
    "~/Library/Saved Application State/com.webull.desktop.v1.savedState",
  ]
end
