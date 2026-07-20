cask "webull" do
  version "9.13.0,9000300087"
  sha256 "89caf41f29d1ad30f608ae76267f93521d7611cceab963769baffbb278a5a5ec"

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
